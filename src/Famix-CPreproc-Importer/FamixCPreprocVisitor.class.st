Class {
	#name : #FamixCPreprocVisitor,
	#superclass : #XMLNodeVisitor,
	#instVars : [
		'importer',
		'file'
	],
	#category : #'Famix-CPreproc-Importer'
}

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> createFile: aName [
	| folder filePath |
	filePath := self pathOfFile: aName.
	folder := self folderFromPath: filePath parent.
	^self detectCFile: filePath basename in: folder ofClass: CPreprocHeader
]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> createInclude: aName localTo: folder [
	| included |
	included := self createFile: (folder fullName , '/' , aName).
	CPreprocInclude new
		mooseModel: self model ;
		included: included ;
		includedBy: file.
]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> detectCFile: aName in: folder ofClass: concreteClass [
	^folder files
		detect: [ :f | f name = aName ]
		ifNone:  [concreteClass new
			name: aName ;
			parentFolder: folder ;
			mooseModel: self model ;
			yourself ]
]

{ #category : #'accessing - testing' }
FamixCPreprocVisitor >> file: aFile [
	file := aFile
]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> folderFromPath: aPath [
	| name parent |
	aPath isRoot ifTrue: [ ^self hardcodedRootFolder: '/' ].

	(aPath fullName = self rootFolder fullName)
		ifTrue: [ ^self hardcodedRootFolder: '.' ].

	name := aPath basename.
	parent := self folderFromPath: aPath parent.
	^self detectCFile: name in: parent ofClass: CPreprocFolder

]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> hardcodedRootFolder: aName [
	^(self model entityNamed: aName)
		ifNil:  [ CPreprocFolder new
			name: aName ;
			mooseModel: self model ;
			yourself ]
		ifNotNil: #yourself

]

{ #category : #accessing }
FamixCPreprocVisitor >> importer: aFamixCPreprocImporter [
	importer := aFamixCPreprocImporter 
]

{ #category : #accessing }
FamixCPreprocVisitor >> model [
	^importer model 
]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> pathOfFile: aName [
	| path |
	path := aName asPath.
	^path isRelative
	ifTrue: [ path relativeToPath: self rootFolder ]
	ifFalse: [ path ]

]

{ #category : #accessing }
FamixCPreprocVisitor >> rootFolder [
	^importer rootFolder 
]

{ #category : #visiting }
FamixCPreprocVisitor >> visitElement: aNode [
	| selector |
	selector := ('visit' , (aNode name capitalized) , ':') asSymbol.
	self perform: selector with: aNode.
	
	super visitElement: aNode 
]

{ #category : #visiting }
FamixCPreprocVisitor >> visitFile: aNode [
	file := self createFile: (aNode attributeAt: 'name').

]

{ #category : #visiting }
FamixCPreprocVisitor >> visitInclude: aNode [
	| selector |
	selector := ('visitInclude' , (aNode attributeAt: 'type') capitalized , ':') asSymbol.
	self perform: selector with: aNode.
]

{ #category : #visiting }
FamixCPreprocVisitor >> visitIncludeLocal: aNode [
	self createInclude: (aNode attributeAt: 'name') localTo: file parentFolder.

]

{ #category : #visiting }
FamixCPreprocVisitor >> visitIncludeSystem: aNode [

]

{ #category : #visiting }
FamixCPreprocVisitor >> visitNode: aNode [
	'XMLNode: ' , (aNode at: #name) crTrace.
	super visitNode: aNode 
]

{ #category : #visiting }
FamixCPreprocVisitor >> visitProject: aNode [

]
