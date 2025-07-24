"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `types` | `FamixCCompilationUnit` | `typeContainer` | `FamixCType` | Types contained (declared) in this entity, if any. #types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `includes` | `FamixPreprocTFile` | `includedBy` | `FamixPreprocTInclude` | All inclusions made by this C-File|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `inclusion` | `FamixPreprocTFile` | `included` | `FamixPreprocTInclude` | All inclusions of this C-file|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixCCompilationUnit',
	#superclass : 'FamixCEntity',
	#traits : 'FamixPreprocTCompilationUnit',
	#classTraits : 'FamixPreprocTCompilationUnit classTrait',
	#instVars : [
		'#types => FMMany type: #FamixCType opposite: #typeContainer'
	],
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCCompilationUnit class >> annotation [

	<FMClass: #CompilationUnit super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]

{ #category : 'adding' }
FamixCCompilationUnit >> addType: anObject [
	<generated>
	^ self types add: anObject
]

{ #category : 'accessing' }
FamixCCompilationUnit >> types [
	"Relation named: #types type: #FamixCType opposite: #typeContainer"

	<generated>
	<FMComment: 'Types contained (declared) in this entity, if any.
#types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.'>
	<derived>
	^ types
]

{ #category : 'accessing' }
FamixCCompilationUnit >> types: anObject [

	<generated>
	types value: anObject
]
