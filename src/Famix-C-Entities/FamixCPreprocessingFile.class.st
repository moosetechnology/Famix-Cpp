"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `functions` | `FamixTWithFunctions` | `functionOwner` | `FamixTFunction` | Functions defined in the container, if any.|
| `globalVariables` | `FamixTWithGlobalVariables` | `parentScope` | `FamixTGlobalVariable` | Global variables defined in the scope, if any.|
| `types` | `FamixTWithTypes` | `typeContainer` | `FamixTType` | Types contained (declared) in this entity, if any. #types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.|



"
Class {
	#name : 'FamixCPreprocessingFile',
	#superclass : 'FamixCEntity',
	#traits : 'FamixTWithFunctions + FamixTWithGlobalVariables + FamixTWithTypes',
	#classTraits : 'FamixTWithFunctions classTrait + FamixTWithGlobalVariables classTrait + FamixTWithTypes classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCPreprocessingFile class >> annotation [

	<FMClass: #PreprocessingFile super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
