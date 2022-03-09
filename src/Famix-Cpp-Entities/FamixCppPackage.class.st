Class {
	#name : #FamixCppPackage,
	#superclass : #FamixCppContainerEntity,
	#traits : 'FamixTPackage + FamixTPackageable + FamixTWithFunctions',
	#classTraits : 'FamixTPackage classTrait + FamixTPackageable classTrait + FamixTWithFunctions classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppPackage class >> annotation [

	<FMClass: #Package super: #FamixCppContainerEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]
