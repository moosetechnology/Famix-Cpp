Class {
	#name : #FamixCSourceAnchor,
	#superclass : #FamixCEntity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCSourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixCSourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixCSourceAnchor
]
