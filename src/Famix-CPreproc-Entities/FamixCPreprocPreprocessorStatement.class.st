Class {
	#name : #FamixCPreprocPreprocessorStatement,
	#superclass : #FamixCPreprocEntity,
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#instVars : [
		'#preprocessorMacro => FMProperty'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
FamixCPreprocPreprocessorStatement class >> annotation [

	<FMClass: #PreprocessorStatement super: #FamixCPreprocEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixCPreprocPreprocessorStatement >> preprocessorMacro [

	<FMProperty: #preprocessorMacro type: #String>
	<generated>
	<FMComment: 'The macro used in the preprocessor statement: "#define <macro>" or "#ifdef <macro>"'>
	^ preprocessorMacro
]

{ #category : #accessing }
FamixCPreprocPreprocessorStatement >> preprocessorMacro: anObject [
	<generated>
	preprocessorMacro := anObject
]
