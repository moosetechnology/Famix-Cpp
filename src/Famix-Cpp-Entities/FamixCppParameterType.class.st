Class {
	#name : #FamixCppParameterType,
	#superclass : #FamixCType,
	#traits : 'FamixTParameterType',
	#classTraits : 'FamixTParameterType classTrait',
	#instVars : [
		'#parentParameterizableClass => FMOne type: #FamixCppParameterizableClass opposite: #parameterTypes'
	],
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppParameterType class >> annotation [

	<FMClass: #ParameterType super: #FamixCType>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixCppParameterType >> parentParameterizableClass [
	"Relation named: #parentParameterizableClass type: #FamixCppParameterizableClass opposite: #parameterTypes"

	<generated>
	<container>
	^ parentParameterizableClass
]

{ #category : #accessing }
FamixCppParameterType >> parentParameterizableClass: anObject [

	<generated>
	parentParameterizableClass := anObject
]

{ #category : #navigation }
FamixCppParameterType >> parentParameterizableClassGroup [
	<generated>
	<navigation: 'ParentParameterizableClass'>
	^ MooseSpecializedGroup with: self parentParameterizableClass
]
