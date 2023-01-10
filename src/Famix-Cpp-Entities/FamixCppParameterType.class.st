Class {
	#name : #FamixCppParameterType,
	#superclass : #FamixCType,
	#traits : 'FamixTParameterType',
	#classTraits : 'FamixTParameterType classTrait',
	#instVars : [
		'#parameterizableClass => FMOne type: #FamixCppParameterizableClass opposite: #parameterTypes'
	],
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppParameterType class >> annotation [

	<FMClass: #ParameterType super: #FamixCType>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixCppParameterType >> parameterizableClass [
	"Relation named: #parameterizableClass type: #FamixCppParameterizableClass opposite: #parameterTypes"

	<generated>
	<container>
	^ parameterizableClass
]

{ #category : #accessing }
FamixCppParameterType >> parameterizableClass: anObject [

	<generated>
	parameterizableClass := anObject
]

{ #category : #navigation }
FamixCppParameterType >> parameterizableClassGroup [
	<generated>
	<navigation: 'ParameterizableClass'>
	^ MooseSpecializedGroup with: self parameterizableClass
]
