Class {
	#name : #FamixCStruct,
	#superclass : #FamixCType,
	#traits : 'FamixTWithAttributes + FamixTWithComments',
	#classTraits : 'FamixTWithAttributes classTrait + FamixTWithComments classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCStruct class >> annotation [

	<FMClass: #Struct super: #FamixCType>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
