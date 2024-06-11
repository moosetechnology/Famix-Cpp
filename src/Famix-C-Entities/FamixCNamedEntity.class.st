"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `modifiers` | `String` | nil | Generic container for language dependent modifiers.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : #FamixCNamedEntity,
	#superclass : #FamixCSourcedEntity,
	#traits : 'FamixTHasModifiers + FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTHasModifiers classTrait + FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixCSourcedEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixCNamedEntity class >> isAbstract [

	<generated>
	^ self == FamixCNamedEntity
]

{ #category : #testing }
FamixCNamedEntity >> isNamedEntity [

	<generated>
	^ true
]
