"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixCNamedEntity',
	#superclass : 'FamixCSourcedEntity',
	#traits : 'FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#category : 'Famix-C-Entities',
	#package : 'Famix-C-Entities'
}

{ #category : 'meta' }
FamixCNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixCSourcedEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FamixCNamedEntity class >> isAbstract [

	<generated>
	^ self == FamixCNamedEntity
]

{ #category : 'testing' }
FamixCNamedEntity >> isNamedEntity [

	<generated>
	^ true
]
