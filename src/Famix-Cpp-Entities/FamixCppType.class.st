Class {
	#name : #FamixCppType,
	#superclass : #FamixCppContainerEntity,
	#traits : 'FamixTClass + FamixTHasModifiers + FamixTWithTypes',
	#classTraits : 'FamixTClass classTrait + FamixTHasModifiers classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppType class >> annotation [

	<FMClass: #Type super: #FamixCppContainerEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #deprecated }
FamixCppType >> belongsTo [
	^ self parentPackage

]
