Class {
	#name : #FamixCppClass,
	#superclass : #FamixCType,
	#traits : 'FamixTClass + FamixTWithTypes',
	#classTraits : 'FamixTClass classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppClass class >> annotation [

	<FMClass: #Class super: #FamixCType>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]
