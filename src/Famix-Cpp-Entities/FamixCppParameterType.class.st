"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentParameterizableClass` | `FamixCppParameterType` | `parameterTypes` | `FamixCppParameterizableClass` | |
| `typeContainer` | `FamixTType` | `types` | `FamixTWithTypes` | Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concretizations` | `FamixTGenericParameterType` | `genericParameter` | `FamixTParameterConcretization` | Concretization relationships, i.e. known concretizations of this type.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingReferences` | `FamixTReferenceable` | `referredType` | `FamixTReference` | References to this entity by other entities.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericEntities` | `FamixTGenericParameterType` | `genericParameters` | `FamixTParametricEntity` | The generic entities that use me.|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|
| `typedEntities` | `FamixTType` | `declaredType` | `FamixTTypedEntity` | Entities that have this type as declaredType|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixCppParameterType,
	#superclass : #FamixCType,
	#traits : 'FamixTGenericParameterType',
	#classTraits : 'FamixTGenericParameterType classTrait',
	#instVars : [
		'#parentParameterizableClass => FMOne type: #FamixCppParameterizableClass opposite: #parameterTypes'
	],
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppParameterType class >> annotation [

	<FMClass: #ParameterType super: #FamixCType>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixCppParameterType >> parentParameterizableClass [
	"Relation named: #parentParameterizableClass type: #FamixCppParameterizableClass opposite: #parameterTypes"

	<generated>
	<container>
	^ parentParameterizableClass
]

{ #category : #accessing }
FamixCppParameterType >> parentParameterizableClass: anObject [

	<generated>
	parentParameterizableClass := anObject
]

{ #category : #navigation }
FamixCppParameterType >> parentParameterizableClassGroup [
	<generated>
	<navigation: 'ParentParameterizableClass'>
	^ MooseSpecializedGroup with: self parentParameterizableClass
]
