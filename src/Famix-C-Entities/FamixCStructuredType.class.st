"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `attributes` | `FamixTWithAttributes` | `parentType` | `FamixTAttribute` | List of attributes declared by this type.|
| `comments` | `FamixTWithComments` | `commentedEntity` | `FamixTComment` | List of comments for the entity|



"
Class {
	#name : 'FamixCStructuredType',
	#superclass : 'FamixCType',
	#traits : 'FamixTWithAttributes + FamixTWithComments',
	#classTraits : 'FamixTWithAttributes classTrait + FamixTWithComments classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCStructuredType class >> annotation [

	<FMClass: #StructuredType super: #FamixCType>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
