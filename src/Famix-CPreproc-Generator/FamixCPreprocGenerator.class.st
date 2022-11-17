Class {
	#name : #FamixCPreprocGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'cFile',
		'header',
		'compilUnit',
		'include',
		'preprocStmt',
		'ifdef',
		'define'
	],
	#classInstVars : [
		'builder',
		'preprocStruct',
		'preprocIfdef',
		'preprocDefine'
	],
	#category : #'Famix-CPreproc-Generator'
}

{ #category : #accessing }
FamixCPreprocGenerator class >> packageName [
    ^ #'Famix-CPreproc-Entities'
]

{ #category : #accessing }
FamixCPreprocGenerator class >> prefix [
    ^ #'FamixCPreproc'
]

{ #category : #accessing }
FamixCPreprocGenerator class >> submetamodels [
    ^ { FamixGenerator }
]

{ #category : #definition }
FamixCPreprocGenerator >> defineClasses [
	super defineClasses.
	
	cFile := builder newClassNamed: #CFile.
	header := builder newClassNamed: #Header.
	compilUnit := builder newClassNamed: #CompilUnit.
	
	preprocStmt := builder newClassNamed: #PreprocStmt.
	ifdef := builder newClassNamed: #Ifdef.
	define := builder newClassNamed: #Define.

	include := builder newClassNamed: #Include.

]

{ #category : #definition }
FamixCPreprocGenerator >> defineHierarchy [
	super defineHierarchy.
    
	cFile --|> #TNamedEntity.

	header --|> cFile.
   compilUnit --|> cFile.

   ifdef --|> preprocStmt.

   define --|> preprocStmt.
	define --|> #TNamedEntity.

   include --|> #TAssociation.
]

{ #category : #definition }
FamixCPreprocGenerator >> defineProperties [

	include property: #isLocal type: #Boolean
]

{ #category : #definition }
FamixCPreprocGenerator >> defineRelations [

	((include property: #included)
			comment: 'C-File included';
			target)
		*-
	((cFile property: #inclusion)
			comment: 'All inclusions of this C-file').

	((include property: #includedBy)
			comment: 'C-File including the receiver';
			source)
		*-
	((cFile property: #includes)
			comment: 'All inclusions made by this C-File').

	((cFile property: #parentFolder)
		container)
		*-
	(folder property: #files).

]
