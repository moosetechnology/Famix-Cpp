Class {
	#name : #CppNewEntity,
	#superclass : #MooseEntity,
	#category : #'CppNew-Entities-Entities'
}

{ #category : #meta }
CppNewEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'CppNew-Entities'>
	<generated>
	^self
]

{ #category : #meta }
CppNewEntity class >> metamodel [

	<generated>
	^ CppNewModel metamodel
]
