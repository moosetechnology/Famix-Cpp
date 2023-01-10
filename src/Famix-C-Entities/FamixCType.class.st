Class {
	#name : #FamixCType,
	#superclass : #FamixCContainerEntity,
	#traits : 'FamixTType + FamixTWithTypeAliases',
	#classTraits : 'FamixTType classTrait + FamixTWithTypeAliases classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCType class >> annotation [

	<FMClass: #Type super: #FamixCContainerEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
