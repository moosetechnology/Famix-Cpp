Class {
	#name : #FamixCBehaviouralPointer,
	#superclass : #FamixCAssociation,
	#instVars : [
		'#behaviouralPointed => FMOne type: #FamixCBehaviouralEntity opposite: #behaviouralAddressers',
		'#referer => FMOne type: #FamixCBehaviouralEntity opposite: #behaviouralPointers'
	],
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCBehaviouralPointer class >> annotation [

	<FMClass: #BehaviouralPointer super: #FamixCAssociation>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixCBehaviouralPointer >> behaviouralPointed [
	"Relation named: #behaviouralPointed type: #FamixCBehaviouralEntity opposite: #behaviouralAddressers"

	<generated>
	<FMComment: 'Function which is pointed to'>
	<target>
	^ behaviouralPointed
]

{ #category : #accessing }
FamixCBehaviouralPointer >> behaviouralPointed: anObject [

	<generated>
	behaviouralPointed := anObject
]

{ #category : #accessing }
FamixCBehaviouralPointer >> referer [
	"Relation named: #referer type: #FamixCBehaviouralEntity opposite: #behaviouralPointers"

	<generated>
	<FMComment: 'Function that required this behavioural address'>
	<source>
	^ referer
]

{ #category : #accessing }
FamixCBehaviouralPointer >> referer: anObject [

	<generated>
	referer := anObject
]
