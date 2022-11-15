Class {
	#name : #FamixCppMethod,
	#superclass : #FamixCBehaviouralEntity,
	#traits : 'FamixTMethod + FamixTNamespace',
	#classTraits : 'FamixTMethod classTrait + FamixTNamespace classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppMethod class >> annotation [

	<FMClass: #Method super: #FamixCBehaviouralEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]
