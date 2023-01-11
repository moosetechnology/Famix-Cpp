Class {
	#name : #FamixCBehaviouralEntity,
	#superclass : #FamixCContainerEntity,
	#traits : 'FamixTHasSignature + FamixTInvocable + FamixTTypedEntity + FamixTWithAccesses + FamixTWithComments + FamixTWithInvocations + FamixTWithStatements',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTTypedEntity classTrait + FamixTWithAccesses classTrait + FamixTWithComments classTrait + FamixTWithInvocations classTrait + FamixTWithStatements classTrait',
	#instVars : [
		'#behaviouralAddressers => FMMany type: #FamixCBehaviouralPointer opposite: #behaviouralPointed',
		'#behaviouralPointers => FMMany type: #FamixCBehaviouralPointer opposite: #referer',
		'#cyclomaticComplexity => FMProperty',
		'#numberOfStatements => FMProperty'
	],
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FamixCContainerEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCBehaviouralEntity >> addBehaviouralAddresser: anObject [
	<generated>
	^ self behaviouralAddressers add: anObject
]

{ #category : #adding }
FamixCBehaviouralEntity >> addBehaviouralPointer: anObject [
	<generated>
	^ self behaviouralPointers add: anObject
]

{ #category : #accessing }
FamixCBehaviouralEntity >> behaviouralAddressers [
	"Relation named: #behaviouralAddressers type: #FamixCBehaviouralPointer opposite: #behaviouralPointed"

	<generated>
	<FMComment: 'All functions which required this address'>
	<derived>
	^ behaviouralAddressers
]

{ #category : #accessing }
FamixCBehaviouralEntity >> behaviouralAddressers: anObject [

	<generated>
	behaviouralAddressers value: anObject
]

{ #category : #accessing }
FamixCBehaviouralEntity >> behaviouralPointers [
	"Relation named: #behaviouralPointers type: #FamixCBehaviouralPointer opposite: #referer"

	<generated>
	<FMComment: 'All functions which addresses are used in this entity'>
	<derived>
	^ behaviouralPointers
]

{ #category : #accessing }
FamixCBehaviouralEntity >> behaviouralPointers: anObject [

	<generated>
	behaviouralPointers value: anObject
]

{ #category : #accessing }
FamixCBehaviouralEntity >> cyclomaticComplexity [

	<FMProperty: #cyclomaticComplexity type: #Number>
	<generated>
	^ cyclomaticComplexity
]

{ #category : #accessing }
FamixCBehaviouralEntity >> cyclomaticComplexity: anObject [
	<generated>
	cyclomaticComplexity := anObject
]

{ #category : #accessing }
FamixCBehaviouralEntity >> numberOfStatements [

	<FMProperty: #numberOfStatements type: #Number>
	<generated>
	^ numberOfStatements
]

{ #category : #accessing }
FamixCBehaviouralEntity >> numberOfStatements: anObject [
	<generated>
	numberOfStatements := anObject
]
