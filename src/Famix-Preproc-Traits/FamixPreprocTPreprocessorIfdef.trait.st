"
Represent a preprocessor #ifdef/#ifndef statement

Knows the name of the macro tested and whether it is ""negated"" (#ifndef) or not (#ifdef)

## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `negated` | `Boolean` | nil | Whether this is a #ifdef (not negated) or #ifndef (negated)|
| `preprocessorMacro` | `String` | nil | The macro used in the preprocessor statement: ""#define <macro>"" or ""#ifdef <macro>""|

"
Trait {
	#name : 'FamixPreprocTPreprocessorIfdef',
	#instVars : [
		'#negated => FMProperty'
	],
	#traits : 'FamixPreprocTPreprocessorStatement',
	#classTraits : 'FamixPreprocTPreprocessorStatement classTrait',
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTPreprocessorIfdef classSide >> annotation [

	<FMClass: #TPreprocessorIfdef super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixPreprocTPreprocessorIfdef >> negated [

	<FMProperty: #negated type: #Boolean>
	<generated>
	<FMComment: 'Whether this is a #ifdef (not negated) or #ifndef (negated)'>
	^ negated
]

{ #category : 'accessing' }
FamixPreprocTPreprocessorIfdef >> negated: anObject [
	<generated>
	negated := anObject
]
