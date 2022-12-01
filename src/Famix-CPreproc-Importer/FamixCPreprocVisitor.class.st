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
	folder := self famixFolderFromPath: filePath parent canonicalize.
	^self detectCFile: filePath basename in: folder ofClass: FamixCPreprocHeader
]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> createInclude: aName localTo: folder [
	| included |
	^(aName beginsWith: './') 
		ifFalse: [ 
			included := self createFile: (folder fullName , '/' , aName).
			FamixCPreprocInclude new
				mooseModel: self model ;
				included: included ;
				includedBy: file.
		]
		ifTrue: [ 
			included := self createFile: aName.
			FamixCPreprocInclude new
				mooseModel: self model ;
				included: included ;
				includedBy: file.
		].
]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> detectCFile: aName in: folder ofClass: concreteClass [
   ^folder files
		detect: [ :f | f name = aName ]
		ifFound: [ :element | element ]
		ifNone:  [
			concreteClass new
			name: aName ;
			parentFolder: folder ;
			mooseModel: self model ;
			yourself ].
]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> famixFolderFromPath: aFileReference [
	"A FileReference should start with a dot (.), if it doesn't you will have a loop"
	| name parent |

	(aFileReference fullName = self rootFolder fullName)
		ifTrue: [ ^self hardcodedFolder: '.' ].

	name := aFileReference basename.

	parent := self famixFolderFromPath: aFileReference parent.
	^self detectCFile: name in: parent ofClass: FamixCPreprocFolder

]

{ #category : #'accessing - testing' }
FamixCPreprocVisitor >> file: aFile [
	file := aFile
]

{ #category : #'private-entity-creation' }
FamixCPreprocVisitor >> hardcodedFolder: aName [
	^(self model entityNamed: aName)
		ifNil:  [ FamixCPreprocFolder new
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
	^(aName beginsWith: '/') 
	ifFalse: [ self rootFolder / aName ]
	ifTrue: [ aName asFileReference ]

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
