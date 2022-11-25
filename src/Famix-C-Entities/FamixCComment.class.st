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
	^self
]
