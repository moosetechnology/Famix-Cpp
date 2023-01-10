Class {
	#name : #FamixCFunction,
	#superclass : #FamixCBehaviouralEntity,
	#traits : 'FamixTFunction + FamixTPackageable',
	#classTraits : 'FamixTFunction classTrait + FamixTPackageable classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCFunction class >> annotation [

	<FMClass: #Function super: #FamixCBehaviouralEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
