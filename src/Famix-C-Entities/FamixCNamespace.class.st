Class {
	#name : #FamixCNamespace,
	#superclass : #FamixCContainerEntity,
	#traits : 'FamixTPackage + FamixTPackageable',
	#classTraits : 'FamixTPackage classTrait + FamixTPackageable classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixCContainerEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
