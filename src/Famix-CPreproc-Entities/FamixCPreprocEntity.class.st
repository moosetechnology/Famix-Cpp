Class {
	#name : #FamixCPreprocEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
FamixCPreprocEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixCPreprocEntity class >> metamodel [

	<generated>
	^ FamixCPreprocModel metamodel
]

{ #category : #'as yet unclassified' }
FamixCPreprocEntity >> clearReplicationCache [
]

{ #category : #testing }
FamixCPreprocEntity >> isAssociation [

	<generated>
	^ false
]
