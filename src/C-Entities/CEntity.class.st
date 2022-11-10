Class {
	#name : #CEntity,
	#superclass : #MooseEntity,
	#category : #'C-Entities-Entities'
}

{ #category : #meta }
CEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'C-Entities'>
	<generated>
	^self
]

{ #category : #meta }
CEntity class >> metamodel [

	<generated>
	^ CModel metamodel
]
