Class {
	#name : #FamixCppClass,
	#superclass : #FamixCStructuredType,
	#traits : 'FamixTClass + FamixTWithTypes',
	#classTraits : 'FamixTClass classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppClass class >> annotation [

	<FMClass: #Class super: #FamixCStructuredType>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]
