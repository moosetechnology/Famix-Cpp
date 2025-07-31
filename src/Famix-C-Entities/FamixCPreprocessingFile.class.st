"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `comments` | `FamixTWithComments` | `commentedEntity` | `FamixTComment` | List of comments for the entity|
| `functions` | `FamixTWithFunctions` | `functionOwner` | `FamixTFunction` | Functions defined in the container, if any.|
| `globalVariables` | `FamixTWithGlobalVariables` | `parentScope` | `FamixTGlobalVariable` | Global variables defined in the scope, if any.|
| `types` | `FamixTWithTypes` | `typeContainer` | `FamixTType` | Types contained (declared) in this entity, if any. #types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accesses` | `FamixTWithAccesses` | `accessor` | `FamixTAccess` | Accesses to variables made by this behaviour.|
| `outgoingInvocations` | `FamixTWithInvocations` | `sender` | `FamixTInvocation` | Outgoing invocations sent by this behaviour.|



"
Class {
	#name : 'FamixCPreprocessingFile',
	#superclass : 'FamixCEntity',
	#traits : 'FamixTWithAccesses + FamixTWithComments + FamixTWithFunctions + FamixTWithGlobalVariables + FamixTWithInvocations + FamixTWithTypes',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithComments classTrait + FamixTWithFunctions classTrait + FamixTWithGlobalVariables classTrait + FamixTWithInvocations classTrait + FamixTWithTypes classTrait',
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
