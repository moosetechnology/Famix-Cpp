"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `negated` | `Boolean` | nil | Whether this is a #ifdef (not negated) or #ifndef (negated)|

"
Class {
	#name : 'FamixCPreprocPreprocessorIfdef',
	#superclass : 'FamixCPreprocPreprocessorStatement',
	#instVars : [
		'#negated => FMProperty'
	],
	#category : 'Famix-CPreproc-Entities-Entities',
	#package : 'Famix-CPreproc-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCPreprocPreprocessorIfdef class >> annotation [

	<FMClass: #PreprocessorIfdef super: #FamixCPreprocPreprocessorStatement>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixCPreprocPreprocessorIfdef >> negated [

	<FMProperty: #negated type: #Boolean>
	<generated>
	<FMComment: 'Whether this is a #ifdef (not negated) or #ifndef (negated)'>
	^ negated
]

{ #category : 'accessing' }
FamixCPreprocPreprocessorIfdef >> negated: anObject [
	<generated>
	negated := anObject
]
