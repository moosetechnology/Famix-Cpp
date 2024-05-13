"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `functionOwner` | `FamixTFunction` | `functions` | `FamixTWithFunctions` | The container defining the function. The function is placed in a container, because certain languages can nest functions in functions.|

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `localVariables` | `FamixTWithLocalVariables` | `parentBehaviouralEntity` | `FamixTLocalVariable` | Variables locally defined by this behaviour.|
| `parameters` | `FamixTWithParameters` | `parentBehaviouralEntity` | `FamixTParameter` | List of formal parameters declared by this behaviour.|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accesses` | `FamixTWithAccesses` | `accessor` | `FamixTAccess` | Accesses to variables made by this behaviour.|
| `outgoingInvocations` | `FamixTWithInvocations` | `sender` | `FamixTInvocation` | Outgoing invocations sent by this behaviour.|
| `outgoingReferences` | `FamixTWithReferences` | `referencer` | `FamixTReference` | References from this entity to other entities.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingInvocations` | `FamixTInvocable` | `candidates` | `FamixTInvocation` | Incoming invocations from other behaviours computed by the candidate operator.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `declaredType` | `FamixTTypedEntity` | `typedEntities` | `FamixTType` | Type of the entity, if any|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|
| `signature` | `String` | nil | Signature of the message being sent|

"
Class {
	#name : #FamixCFunction,
	#superclass : #FamixCBehaviouralEntity,
	#traits : 'FamixTFunction',
	#classTraits : 'FamixTFunction classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCFunction class >> annotation [

	<FMClass: #Function super: #FamixCBehaviouralEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
