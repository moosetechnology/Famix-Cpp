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
| `preprocessorMacro` | `String` | nil | The macro used in the preprocessor statement: ""#define <macro>"" or ""#ifdef <macro>""|

"
Trait {
	#name : 'FamixPreprocTPreprocessorStatement',
	#instVars : [
		'#preprocessorMacro => FMProperty'
	],
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTPreprocessorStatement classSide >> annotation [

	<FMClass: #TPreprocessorStatement super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixPreprocTPreprocessorStatement >> preprocessorMacro [

	<FMProperty: #preprocessorMacro type: #String>
	<generated>
	<FMComment: 'The macro used in the preprocessor statement: "#define <macro>" or "#ifdef <macro>"'>
	^ preprocessorMacro
]

{ #category : 'accessing' }
FamixPreprocTPreprocessorStatement >> preprocessorMacro: anObject [
	<generated>
	preprocessorMacro := anObject
]
