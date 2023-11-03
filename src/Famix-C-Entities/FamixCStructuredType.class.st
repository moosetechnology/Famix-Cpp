Class {
	#name : #FamixCStructuredType,
	#superclass : #FamixCType,
	#traits : 'FamixTWithAttributes + FamixTWithComments',
	#classTraits : 'FamixTWithAttributes classTrait + FamixTWithComments classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCStructuredType class >> annotation [

	<FMClass: #StructuredType super: #FamixCType>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
