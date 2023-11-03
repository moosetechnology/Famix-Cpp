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
