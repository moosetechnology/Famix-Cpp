Class {
	#name : #FamixCppNamedEntity,
	#superclass : #FamixCppSourcedEntity,
	#traits : 'FamixTHasModifiers + FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTHasModifiers classTrait + FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixCppSourcedEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]
