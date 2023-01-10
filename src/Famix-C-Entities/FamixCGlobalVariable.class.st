Class {
	#name : #FamixCGlobalVariable,
	#superclass : #FamixCNamedEntity,
	#traits : 'FamixTGlobalVariable + FamixTPackageable',
	#classTraits : 'FamixTGlobalVariable classTrait + FamixTPackageable classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCGlobalVariable class >> annotation [

	<FMClass: #GlobalVariable super: #FamixCNamedEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
