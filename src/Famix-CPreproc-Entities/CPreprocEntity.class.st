Class {
	#name : #CPreprocEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
CPreprocEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #meta }
CPreprocEntity class >> metamodel [

	<generated>
	^ CPreprocModel metamodel
]

{ #category : #testing }
CPreprocEntity >> isAssociation [

	<generated>
	^ false
]
