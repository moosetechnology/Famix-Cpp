"
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
Class {
	#name : 'FamixCPreprocessorIfdef',
	#superclass : 'FamixCEntity',
	#traits : 'FamixPreprocTPreprocessorIfdef',
	#classTraits : 'FamixPreprocTPreprocessorIfdef classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCPreprocessorIfdef class >> annotation [

	<FMClass: #PreprocessorIfdef super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
