Class {
	#name : #FamixCPreprocGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'cFileX',
		'headerX',
		'compilUnitX',
		'associationX',
		'includeX',
		'preprocStruct',
		'preprocIfdef',
		'preprocDefine',
		'cFile',
		'header',
		'compilUnit',
		'association',
		'include'
	],
	#classInstVars : [
		'builder',
		'cFileX',
		'headerX',
		'compilUnitX',
		'associationX',
		'includeX',
		'preprocStruct',
		'preprocIfdef',
		'preprocDefine'
	],
	#category : #'Famix-CPreproc-Generator'
}

{ #category : #accessing }
FamixCPreprocGenerator class >> packageName [
    ^ #'CPreproc-Entities'
]

{ #category : #accessing }
FamixCPreprocGenerator class >> prefix [
    ^ #'CPreproc'
]

{ #category : #accessing }
FamixCPreprocGenerator class >> submetamodels [
    ^ { FamixCGenerator }
]

{ #category : #definition }
FamixCPreprocGenerator >> defineClasses [
	super defineClasses.
	
	cFile := builder newClassNamed: #CFile.
	header := builder newClassNamed: #Header.
	compilUnit := builder newClassNamed: #CompilUnit.
	
	preprocStruct := builder newClassNamed: #PreprocStruct.
	preprocIfdef := builder newClassNamed: #PreprocIfdef.
	preprocDefine := builder newClassNamed: #PreprocDefine.

	association := self remoteEntity: #Association withPrefix: #C. 
	include := builder newClassNamed: #Include.

]

{ #category : #definition }
FamixCPreprocGenerator >> defineHierarchy [
    super defineHierarchy.
    
    header --|> cFile.
    compilUnit --|> cFile.

    preprocIfdef --|> preprocStruct.
    preprocDefine --|> preprocStruct.

    include --|> association.
]
