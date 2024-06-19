"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sender` | `FamixTInvocation` | `outgoingInvocations` | `FamixTWithInvocations` | Behavioural entity making the call. from-side of the association|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `candidates` | `FamixTInvocation` | `incomingInvocations` | `FamixTInvocable` | List of candidate behavioural entities for receiving the invocation|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `receiver` | `FamixTInvocation` | `receivingInvocations` | `FamixTInvocationsReceiver` | Named entity (variable, class...) receiving the invocation. to-side of the association|
| `referencer` | `FamixTDereferencedInvocation` | `dereferencedInvocations` | `FamixTWithDereferencedInvocations` | Structural entity that references the BehaviouralEntity invoked|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `signature` | `String` | nil | Signature of the message being sent|

"
Class {
	#name : #FamixCDereferencedInvocation,
	#superclass : #FamixCInvocation,
	#traits : 'FamixTDereferencedInvocation',
	#classTraits : 'FamixTDereferencedInvocation classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCDereferencedInvocation class >> annotation [

	<FMClass: #DereferencedInvocation super: #FamixCInvocation>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
