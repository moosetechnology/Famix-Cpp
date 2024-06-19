"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixCPreprocPreprocessorDefine,
	#superclass : #FamixCPreprocPreprocessorStatement,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
FamixCPreprocPreprocessorDefine class >> annotation [

	<FMClass: #PreprocessorDefine super: #FamixCPreprocPreprocessorStatement>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^ self
]
