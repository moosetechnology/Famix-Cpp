Class {
	#name : #FamixCppBehaviouralEntity,
	#superclass : #FamixCppContainerEntity,
	#traits : 'FamixTInvocable + FamixTWithAccesses + FamixTWithInvocations + FamixTWithStatements',
	#classTraits : 'FamixTInvocable classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithStatements classTrait',
	#instVars : [
		'#innerBlocks => FMMany type: #FamixCppBlock opposite: #parentBlock'
	],
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FamixCppContainerEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCppBehaviouralEntity >> addInnerBlock: anObject [
	<generated>
	^ self innerBlocks add: anObject
]

{ #category : #accessing }
FamixCppBehaviouralEntity >> innerBlocks [
	"Relation named: #innerBlocks type: #CppBlock opposite: #parentBlock"

	<generated>
	<FMComment: 'Blocks declared in this behavioural'>
	<derived>
	^ innerBlocks
]

{ #category : #accessing }
FamixCppBehaviouralEntity >> innerBlocks: anObject [

	<generated>
	innerBlocks value: anObject
]
