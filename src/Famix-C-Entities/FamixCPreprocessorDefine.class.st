"
## Relations
======================

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingAccesses` | `FamixTAccessible` | `candidates` | `FamixTAccess` | All Famix accesses pointing to this structural entity|
| `incomingInvocations` | `FamixTInvocable` | `candidates` | `FamixTInvocation` | Incoming invocations from other behaviours computed by the candidate operator.|

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
Class {
	#name : 'FamixCPreprocessorDefine',
	#superclass : 'FamixCEntity',
	#traits : 'FamixPreprocTPreprocessorDefine + FamixTAccessible + FamixTInvocable',
	#classTraits : 'FamixPreprocTPreprocessorDefine classTrait + FamixTAccessible classTrait + FamixTInvocable classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCPreprocessorDefine class >> annotation [

	<FMClass: #PreprocessorDefine super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
