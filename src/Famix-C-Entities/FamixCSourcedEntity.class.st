"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|



"
Class {
	#name : 'FamixCSourcedEntity',
	#superclass : 'FamixCEntity',
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FamixCSourcedEntity class >> isAbstract [

	<generated>
	^ self == FamixCSourcedEntity
]
