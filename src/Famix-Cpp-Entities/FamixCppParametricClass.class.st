"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeParameters` | `FamixTParametricEntity` | `genericEntity` | `FamixTTypeParameter` | The parameters of this parametric entity. They can be concrete classes or types or generic type parameters|



"
Class {
	#name : 'FamixCppParametricClass',
	#superclass : 'FamixCppClass',
	#traits : 'FamixTParametricEntity',
	#classTraits : 'FamixTParametricEntity classTrait',
	#category : 'Famix-Cpp-Entities-Entities',
	#package : 'Famix-Cpp-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCppParametricClass class >> annotation [

	<FMClass: #ParametricClass super: #FamixCppClass>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]
