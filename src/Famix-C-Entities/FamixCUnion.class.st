Class {
	#name : #FamixCUnion,
	#superclass : #FamixCType,
	#traits : 'FamixTWithAttributes + FamixTWithComments',
	#classTraits : 'FamixTWithAttributes classTrait + FamixTWithComments classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCUnion class >> annotation [

	<FMClass: #Union super: #FamixCType>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
