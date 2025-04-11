"
## Relations
======================

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concretizations` | `FamixTTypeParameter` | `genericParameter` | `FamixTConcretization` | Known concretizations of this type parameter.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericEntity` | `FamixTTypeParameter` | `typeParameters` | `FamixTParametricEntity` | Generic entity that declare this type parameter.|



"
Class {
	#name : 'FamixCppTypeParameter',
	#superclass : 'FamixCType',
	#traits : 'FamixTTypeParameter',
	#classTraits : 'FamixTTypeParameter classTrait',
	#category : 'Famix-Cpp-Entities-Entities',
	#package : 'Famix-Cpp-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCppTypeParameter class >> annotation [

	<FMClass: #TypeParameter super: #FamixCType>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]
