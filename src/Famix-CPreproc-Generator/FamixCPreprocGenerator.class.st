"
Generator for CPreprocessor meta model (note: used in the C meta model)
"
Class {
	#name : #FamixCPreprocGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'preprocIfdef',
		'preprocDefine',
		'cFile',
		'header',
		'compilUnit',
		'include',
		'preprocStatement',
		'folder',
		'diskEntity'
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
	diskEntity := builder newClassNamed: #DiskEntity.
	header := builder newClassNamed: #Header.
	compilUnit := builder newClassNamed: #CompilUnit.
	folder := builder newClassNamed: #Folder.
	
	preprocStatement := builder newClassNamed: #PreprocStatement.
	preprocIfdef := builder newClassNamed: #PreprocIfdef.
	preprocDefine := builder newClassNamed: #PreprocDefine.

	include := builder newClassNamed: #Include.

]

{ #category : #definition }
FamixCPreprocGenerator >> defineHierarchy [
	super defineHierarchy.
    
	diskEntity --|> #TNamedEntity. 	
   cFile --|> #TEntityMetaLevelDependency.
	cFile --|> diskEntity. 
	folder --|> diskEntity .

	header --|> cFile.
   compilUnit --|> cFile.

   preprocIfdef --|> preprocStatement.

   preprocDefine --|> preprocStatement.
	preprocDefine --|> #TNamedEntity.

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

	((diskEntity property: #parentFolder)
		container)
		*-
	(folder property: #children).

]
