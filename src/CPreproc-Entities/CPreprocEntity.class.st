Class {
	#name : #CPreprocEntity,
	#superclass : #MooseEntity,
	#category : #'CPreproc-Entities-Entities'
}

{ #category : #meta }
CPreprocEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #meta }
CPreprocEntity class >> metamodel [

	<generated>
	^ CPreprocModel metamodel
]
