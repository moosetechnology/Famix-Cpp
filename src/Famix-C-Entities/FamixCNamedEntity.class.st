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
