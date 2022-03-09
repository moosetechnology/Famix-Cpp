Class {
	#name : #FamixCppMultipleFileAnchor,
	#superclass : #FamixCppSourceAnchor,
	#traits : 'FamixTMultipleFileAnchor',
	#classTraits : 'FamixTMultipleFileAnchor classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppMultipleFileAnchor class >> annotation [

	<FMClass: #MultipleFileAnchor super: #FamixCppSourceAnchor>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCppMultipleFileAnchor >> addFile: aFileAnchor [
	self deprecated: 'Use #addSourceAnchor: instead' transformWith: '`@receiver addFile: `@arg' -> '`@receiver addSourceAnchor: `@arg'.
	self addSourceAnchor: aFileAnchor
]
