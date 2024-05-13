"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `commentedEntity` | `FamixTComment` | `comments` | `FamixTWithComments` | Source code commented by the comment|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `content` | `String` | nil | Content of the comment as a String|

"
Class {
	#name : #FamixCComment,
	#superclass : #FamixCSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCComment class >> annotation [

	<FMClass: #Comment super: #FamixCSourcedEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
