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

	diskEntity := builder newClassNamed: #DiskEntity.
	cFile := builder newClassNamed: #CFile.
	header := builder newClassNamed: #HeaderFile.
	compilUnit := builder newClassNamed: #CompilationUnit.
	folder := builder newClassNamed: #Folder.

	preprocStatement := builder newClassNamed: #PreprocessorStatement.
	preprocIfdef := builder newClassNamed: #PreprocessorIfdef.
	preprocDefine := builder newClassNamed: #PreprocessorDefine.

	include := builder newClassNamed: #Include.

]

{ #category : #definition }
FamixCPreprocGenerator >> defineHierarchy [
	super defineHierarchy.
    
	diskEntity --|> #TNamedEntity. 	
   diskEntity --|> #TEntityMetaLevelDependency.
	cFile --|> diskEntity. 
	folder --|> diskEntity .

	header --|> cFile.
   compilUnit --|> cFile.

   preprocIfdef --|> preprocStatement.

   preprocDefine --|> preprocStatement.
	preprocDefine --|> #TNamedEntity.

	preprocStatement --|> #TSourceEntity.

   include --|> #TAssociation.
]

{ #category : #definition }
FamixCPreprocGenerator >> defineProperties [

	(include property: #isLocal type: #Boolean)
		comment: 'Whether this is a local include (with "included.h") or a system one (with <included.h>)'.

	(preprocStatement property: #preprocessorMacro type: #String)
		comment: 'The macro used in the preprocessor statement: "#define <macro>" or "#ifdef <macro>"'.

	(preprocIfdef property: #negated type: #Boolean)
		comment: 'Whether this is a #ifdef (not negated) or #ifndef (negated)'.
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
