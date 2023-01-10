Class {
	#name : #FamixCppParameterizableClass,
	#superclass : #FamixCppClass,
	#traits : 'FamixTWithParameterizedTypes',
	#classTraits : 'FamixTWithParameterizedTypes classTrait',
	#instVars : [
		'#parameterTypes => FMMany type: #FamixCppParameterType opposite: #parentParameterizableClass'
	],
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppParameterizableClass class >> annotation [

	<FMClass: #ParameterizableClass super: #FamixCppClass>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCppParameterizableClass >> addParameterType: anObject [
	<generated>
	^ self parameterTypes add: anObject
]

{ #category : #accessing }
FamixCppParameterizableClass >> parameterTypes [
	"Relation named: #parameterTypes type: #FamixCppParameterType opposite: #parentParameterizableClass"

	<generated>
	<derived>
	^ parameterTypes
]

{ #category : #accessing }
FamixCppParameterizableClass >> parameterTypes: anObject [

	<generated>
	parameterTypes value: anObject
]

{ #category : #navigation }
FamixCppParameterizableClass >> parameterTypesGroup [
	<generated>
	<navigation: 'ParameterTypes'>
	^ MooseSpecializedGroup withAll: self parameterTypes asSet
]
