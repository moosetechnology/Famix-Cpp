Class {
	#name : 'FamixCPreprocEntity',
	#superclass : 'MooseEntity',
	#category : 'Famix-CPreproc-Entities-Entities',
	#package : 'Famix-CPreproc-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCPreprocEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FamixCPreprocEntity class >> isAbstract [

	<generated>
	^ self == FamixCPreprocEntity
]

{ #category : 'meta' }
FamixCPreprocEntity class >> metamodel [

	<generated>
	^ FamixCPreprocModel metamodel
]

{ #category : 'as yet unclassified' }
FamixCPreprocEntity >> clearReplicationCache [
]

{ #category : 'testing' }
FamixCPreprocEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : 'testing' }
FamixCPreprocEntity >> isQueryable [

	<generated>
	^ false
]
