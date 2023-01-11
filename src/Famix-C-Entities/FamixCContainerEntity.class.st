Class {
	#name : #FamixCContainerEntity,
	#superclass : #FamixCNamedEntity,
	#traits : 'FamixTWithFunctions + FamixTWithLocalVariables + FamixTWithTypes',
	#classTraits : 'FamixTWithFunctions classTrait + FamixTWithLocalVariables classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCContainerEntity class >> annotation [

	<FMClass: #ContainerEntity super: #FamixCNamedEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
