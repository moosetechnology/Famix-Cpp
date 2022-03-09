"
TODO
"
Class {
	#name : #FamixCppCSVImporter,
	#superclass : #Object,
	#category : #'Famix-Cpp-Parser-CSVImporter'
}

{ #category : #accessing }
FamixCppCSVImporter class >> declarationMap [
	^ Dictionary new
		at: #fileLocation
			put:
			'#Files
fileId,path';
		at: #namespace
			put:
			'#Namespaces
id,name,parentId,file,line,column';
		at: #package
			put:
			'#Packages
id,name,parentId';
		at: #type
			put:
			'#Types
id,name';
		at: #classe
			put:
			'#Classes
id,name,typeId,parentId,file,line,column,abstract,trivial,kind,packageId';
		at: #enum
			put:
			'#Enums
id,name,typeId,parentId,file,line,column,packageId';
		at: #function
			put:
			'#Funcs
id,name,typeId,parentId,file,line,column,lineE,vindex';
		at: #variable
			put:
			'#Vars
id,name,typeId,parentId,file,line,column';
		at: #edge
			put:
			'#Edges
sourceId,targetId,file,line,column,edgeType';
		yourself
]

{ #category : #accessing }
FamixCppCSVImporter class >> modelClass [
	^ FamixCppModel
]

{ #category : #'instance creation' }
FamixCppCSVImporter class >> runOn: aFolder [
	^ self new runOn: aFolder asFileReference
]

{ #category : #'instance creation' }
FamixCppCSVImporter class >> runOn: aSourceFolder withRefFile: aFile withModel: aModel [
	^ self new runOn: aSourceFolder withRefFile: aFile readStream withModel: aModel
]

{ #category : #'instance creation' }
FamixCppCSVImporter >> declarationFor: aSymbol [
	^ self class declarationMap at: aSymbol
]

{ #category : #initialization }
FamixCppCSVImporter >> initialize [
	<launcherFor: #cpp priority: 10>
	super initialize
]

{ #category : #accessing }
FamixCppCSVImporter >> modelClass [
	^ self class modelClass
]

{ #category : #accessing }
FamixCppCSVImporter >> newModelOn: aRootFolder [
	^ self modelClass new
		rootFolder: aRootFolder fullName;
		yourself
]

{ #category : #parsing }
FamixCppCSVImporter >> parse: stream forDeclaration: aSymbol with: parser [
	| securedPosition declaration |
	('Running sub-parser ' , aSymbol) record.
	securedPosition := stream position.
	declaration := self declarationFor: aSymbol.
	declaration lines
		do: [ :aLine | 
			('Checking if the stream is positioned at "' , aLine , '"') record.
			self
				assert: (aLine asPParser parse: stream nextLine) isPetit2Failure not
				description: 'Unable to find declaration: ' , declaration , ' at position: ' , securedPosition asString ].
	[ securedPosition := stream position.
	(parser parse: (stream nextLine ifNil: [ '' ])) isPetit2Failure ] whileFalse.
	stream position: securedPosition
]

{ #category : #'instance creation' }
FamixCppCSVImporter >> runOn: aFolder [
	^ self runOn: aFolder withModel: (self newModelOn: aFolder)
]

{ #category : #'instance creation' }
FamixCppCSVImporter >> runOn: aFolder withModel: model [
	| refFile |
	self flag: #todo.	"Manage errors"
	refFile := aFolder children detect: [ :f | f extension = 'ref' ].
	('Launch Siemens CSV importer on ' , refFile basename) record.
	^ FamixCppCSVImporter runOn: aFolder withRefFile: refFile withModel: model
]

{ #category : #'instance creation' }
FamixCppCSVImporter >> runOn: aSourceFolder withRefFile: aReadStream withModel: aModel [
	self
		execute: [ | parser |
			parser := FamixCppCSVParser new
				optimize;
				model: aModel;
				yourself.

			[ #(#fileLocation #namespace #package #type #classe #enum #function #variable #edge)
				do: [ :symbol | self parse: aReadStream forDeclaration: symbol with: (parser perform: symbol) ] ]
				ensure: [ aReadStream close ].
			parser doReportedOperations.
			(aModel allWithSubTypesOf: FamixCppSourcedEntity) do: [ :entity | entity sourceAnchor ifNil: [ entity isStub ] ].
			self setMethodsModifiersIn: aModel.
			self setMethodsKindsIn: aModel.
			self setUnknowPackageToOrphanTypesIn: aModel ]
		recordedAs: 'Import CPP model'.
	^ aModel
]

{ #category : #'instance creation' }
FamixCppCSVImporter >> setMethodsKindsIn: aModel [
	"With Siemens's parser we do not have the kind informations. To improve user experience we try to find the best suited modifier here."

	self
		execute: [ (aModel allWithSubTypesOf: FamixCppMethod)
				do: [ :method | 
					method parentType name = method name ifTrue: [ method isConstructor: true ].
					method parentType name = ('~' , method name) ifTrue: [ method isDestructor: true ] ] ]
		recordedAs: 'Init kind of methods.'
]

{ #category : #'instance creation' }
FamixCppCSVImporter >> setMethodsModifiersIn: aModel [
	"With this parser we do not have the public/private informations. To improve user experience we try to find the best suited modifier here."

	self
		execute: [ (aModel allWithSubTypesOf: FamixCppMethod) do: [ :method | method addModifier: (method clientTypes ifEmpty: [ #private ] ifNotEmpty: [ #public ]) ] ]
		recordedAs: 'Init modifier of methods'
]

{ #category : #'instance creation' }
FamixCppCSVImporter >> setUnknowPackageToOrphanTypesIn: aModel [
	"To improve user experiance while using the tools, we group potential orphan classes into an unknow package."

	self
		execute: [ | unknowPackage |
			unknowPackage := FamixCppPackage new
				name: 'unknowPackage';
				mooseModel: aModel;
				isStub;
				yourself.
			(aModel allWithSubTypesOf: FamixCppType) do: [ :type | type parentPackage ifNil: [ type parentPackage: unknowPackage ] ] ]
		recordedAs: 'Set unknow package'
]
