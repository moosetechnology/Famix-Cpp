Class {
	#name : #CType,
	#superclass : #CEntity,
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'C-Entities-Entities'
}

{ #category : #meta }
CType class >> annotation [

	<FMClass: #Type super: #CEntity>
	<package: #'C-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
CType >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
CType >> name: anObject [
	<generated>
	name := anObject
]
