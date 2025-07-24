"
Represent a preprocessor #define statement

Knows the name of the macro defined

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
| `name` | `String` | nil | Basic name of the entity, not full reference.|
| `preprocessorMacro` | `String` | nil | The macro used in the preprocessor statement: ""#define <macro>"" or ""#ifdef <macro>""|

"
Trait {
	#name : 'FamixPreprocTPreprocessorDefine',
	#traits : 'FamixPreprocTPreprocessorStatement + FamixTNamedEntity',
	#classTraits : 'FamixPreprocTPreprocessorStatement classTrait + FamixTNamedEntity classTrait',
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTPreprocessorDefine classSide >> annotation [

	<FMClass: #TPreprocessorDefine super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]
