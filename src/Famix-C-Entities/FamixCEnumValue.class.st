Class {
	#name : #FamixCEnumValue,
	#superclass : #FamixCNamedEntity,
	#traits : 'FamixTAccessible + FamixTEnumValue + FamixTSourceEntity',
	#classTraits : 'FamixTAccessible classTrait + FamixTEnumValue classTrait + FamixTSourceEntity classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCEnumValue class >> annotation [

	<FMClass: #EnumValue super: #FamixCNamedEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
