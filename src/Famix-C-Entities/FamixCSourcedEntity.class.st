"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|

"
Class {
	#name : #FamixCSourcedEntity,
	#superclass : #FamixCEntity,
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixCSourcedEntity class >> isAbstract [

	<generated>
	^ self == FamixCSourcedEntity
]
