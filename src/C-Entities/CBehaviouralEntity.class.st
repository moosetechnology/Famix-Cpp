Class {
	#name : #CBehaviouralEntity,
	#superclass : #CEntity,
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'C-Entities-Entities'
}

{ #category : #meta }
CBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #CEntity>
	<package: #'C-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
CBehaviouralEntity >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
CBehaviouralEntity >> name: anObject [
	<generated>
	name := anObject
]
