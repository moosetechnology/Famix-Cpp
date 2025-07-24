"
Generator for CPreprocessor meta model (note: used in the C meta model)
"
Class {
	#name : 'FamixPreprocGenerator',
	#superclass : 'FamixMetamodelGenerator',
	#instVars : [
		'tFile',
		'tCompilationUnit',
		'tHeader',
		'tInclude',
		'tPreprocDefine',
		'tPreprocIfdef',
		'tPreprocStatement'
	],
	#category : 'Famix-Preproc-Generator',
	#package : 'Famix-Preproc-Generator'
}

{ #category : 'accessing' }
FamixPreprocGenerator class >> packageName [
    ^ #'Famix-Preproc-Traits'
]

{ #category : 'accessing' }
FamixPreprocGenerator class >> prefix [
    ^ #'FamixPreproc'
]

{ #category : 'accessing' }
FamixPreprocGenerator class >> submetamodels [
    ^ { FamixGenerator }
]

{ #category : 'definition' }
FamixPreprocGenerator >> defineHierarchy [

	super defineHierarchy.

	tHeader --|> tFile.
	tHeader --|> #TNamedEntity.
	tHeader --|> #TEntityMetaLevelDependency.
	tHeader --|> #TCanBeStub.

	tCompilationUnit --|> tFile.
	tCompilationUnit --|> #TNamedEntity.
	tCompilationUnit --|> #TEntityMetaLevelDependency.
	tCompilationUnit --|> #TCanBeStub.

	tPreprocIfdef --|> tPreprocStatement.

	tPreprocDefine --|> tPreprocStatement.
	tPreprocDefine --|> #TNamedEntity.

	tPreprocStatement --|> #TSourceEntity.

	tInclude --|> #TAssociation
]

{ #category : 'definition' }
FamixPreprocGenerator >> defineProperties [

	(tInclude property: #isLocal type: #Boolean)
		comment: 'Whether this is a local include (with "included.h") or a system one (with <included.h>)'.

	(tPreprocStatement property: #preprocessorMacro type: #String)
		comment: 'The macro used in the preprocessor statement: "#define <macro>" or "#ifdef <macro>"'.

	(tPreprocIfdef property: #negated type: #Boolean)
		comment: 'Whether this is a #ifdef (not negated) or #ifndef (negated)'.
]

{ #category : 'definition' }
FamixPreprocGenerator >> defineRelations [

	((tInclude property: #included)
			comment: 'C-File included';
			target)
		*-
	((tFile property: #inclusion)
			comment: 'All inclusions of this C-file').

	((tInclude property: #includedBy)
			comment: 'C-File including the receiver';
			source)
		*-
	((tFile property: #includes)
			comment: 'All inclusions made by this C-File')

]

{ #category : 'definition' }
FamixPreprocGenerator >> defineTraits [

	super defineTraits.

	tFile := builder newTraitNamed: 'TFile'.

	tHeader := builder newTraitNamed: #THeaderFile.
	tCompilationUnit := builder newTraitNamed: #TCompilationUnit.

	tPreprocStatement := builder newTraitNamed: #TPreprocessorStatement.
	tPreprocIfdef := builder
		                 newTraitNamed: #TPreprocessorIfdef
		                 comment:
			                 'Represent a preprocessor #ifdef/#ifndef statement

Knows the name of the macro tested and whether it is "negated" (#ifndef) or not (#ifdef)'.
	tPreprocDefine := builder
		                  newTraitNamed: #TPreprocessorDefine
		                  comment:
			                  'Represent a preprocessor #define statement

Knows the name of the macro defined'.

	tInclude := builder newTraitNamed: #TInclude
]
