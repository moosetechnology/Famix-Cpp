Class {
	#name : #FamixCppNamespace,
	#superclass : #FamixCppContainerEntity,
	#traits : 'FamixTNamespace + FamixTWithClasses + FamixTWithFunctions + FamixTWithGlobalVariables',
	#classTraits : 'FamixTNamespace classTrait + FamixTWithClasses classTrait + FamixTWithFunctions classTrait + FamixTWithGlobalVariables classTrait',
	#instVars : [
		'#parentScope => FMOne type: #FamixCppNamespace opposite: #childScopes',
		'#childScopes => FMMany type: #FamixCppNamespace opposite: #parentScope'
	],
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixCppContainerEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCppNamespace >> addChildScope: anObject [
	<generated>
	^ self childScopes add: anObject
]

{ #category : #accessing }
FamixCppNamespace >> childScopes [
	"Relation named: #childScopes type: #FamixCppNamespace opposite: #parentScope"

	<generated>
	<FMComment: 'Child scopes embedded in this scope, if any.'>
	<derived>
	^ childScopes
]

{ #category : #accessing }
FamixCppNamespace >> childScopes: anObject [

	<generated>
	childScopes value: anObject
]

{ #category : #accessing }
FamixCppNamespace >> parentScope [
	"Relation named: #parentScope type: #FamixCppNamespace opposite: #childScopes"

	<generated>
	<FMComment: 'Parent scope embedding this scope, if any.'>
	<container>
	^ parentScope
]

{ #category : #accessing }
FamixCppNamespace >> parentScope: anObject [

	<generated>
	parentScope := anObject
]

{ #category : #navigation }
FamixCppNamespace >> parentScopeGroup [
	<generated>
	<navigation: 'ParentScope'>
	^ MooseSpecializedGroup with: self parentScope
]
