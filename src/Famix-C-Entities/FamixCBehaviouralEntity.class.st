"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `comments` | `FamixTWithComments` | `commentedEntity` | `FamixTComment` | List of comments for the entity|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `accesses` | `FamixTWithAccesses` | `accessor` | `FamixTAccess` | Accesses to variables made by this behaviour.|
| `behaviouralPointers` | `FamixCBehaviouralEntity` | `referer` | `FamixCBehaviouralPointer` | All functions which addresses are used in this entity|
| `outgoingInvocations` | `FamixTWithInvocations` | `sender` | `FamixTInvocation` | Outgoing invocations sent by this behaviour.|
| `outgoingReferences` | `FamixTWithReferences` | `referencer` | `FamixTReference` | References from this entity to other entities.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `behaviouralAddressers` | `FamixCBehaviouralEntity` | `behaviouralPointed` | `FamixCBehaviouralPointer` | All functions which required this address|
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
| `cyclomaticComplexity` | `Number` | nil | |
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `numberOfStatements` | `Number` | nil | |
| `signature` | `String` | nil | Signature of the message being sent|

"
Class {
	#name : #FamixCBehaviouralEntity,
	#superclass : #FamixCContainerEntity,
	#traits : 'FamixTHasSignature + FamixTInvocable + FamixTTypedEntity + FamixTWithAccesses + FamixTWithComments + FamixTWithInvocations + FamixTWithStatements',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTTypedEntity classTrait + FamixTWithAccesses classTrait + FamixTWithComments classTrait + FamixTWithInvocations classTrait + FamixTWithStatements classTrait',
	#instVars : [
		'#behaviouralAddressers => FMMany type: #FamixCBehaviouralPointer opposite: #behaviouralPointed',
		'#behaviouralPointers => FMMany type: #FamixCBehaviouralPointer opposite: #referer',
		'#cyclomaticComplexity => FMProperty',
		'#numberOfStatements => FMProperty'
	],
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FamixCContainerEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FamixCBehaviouralEntity >> addBehaviouralAddresser: anObject [
	<generated>
	^ self behaviouralAddressers add: anObject
]

{ #category : #adding }
FamixCBehaviouralEntity >> addBehaviouralPointer: anObject [
	<generated>
	^ self behaviouralPointers add: anObject
]

{ #category : #accessing }
FamixCBehaviouralEntity >> behaviouralAddressers [
	"Relation named: #behaviouralAddressers type: #FamixCBehaviouralPointer opposite: #behaviouralPointed"

	<generated>
	<FMComment: 'All functions which required this address'>
	<derived>
	^ behaviouralAddressers
]

{ #category : #accessing }
FamixCBehaviouralEntity >> behaviouralAddressers: anObject [

	<generated>
	behaviouralAddressers value: anObject
]

{ #category : #accessing }
FamixCBehaviouralEntity >> behaviouralPointers [
	"Relation named: #behaviouralPointers type: #FamixCBehaviouralPointer opposite: #referer"

	<generated>
	<FMComment: 'All functions which addresses are used in this entity'>
	<derived>
	^ behaviouralPointers
]

{ #category : #accessing }
FamixCBehaviouralEntity >> behaviouralPointers: anObject [

	<generated>
	behaviouralPointers value: anObject
]

{ #category : #accessing }
FamixCBehaviouralEntity >> cyclomaticComplexity [

	<FMProperty: #cyclomaticComplexity type: #Number>
	<generated>
	^ cyclomaticComplexity
]

{ #category : #accessing }
FamixCBehaviouralEntity >> cyclomaticComplexity: anObject [
	<generated>
	cyclomaticComplexity := anObject
]

{ #category : #accessing }
FamixCBehaviouralEntity >> numberOfStatements [

	<FMProperty: #numberOfStatements type: #Number>
	<generated>
	^ numberOfStatements
]

{ #category : #accessing }
FamixCBehaviouralEntity >> numberOfStatements: anObject [
	<generated>
	numberOfStatements := anObject
]
