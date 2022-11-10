Class {
	#name : #CAssociation,
	#superclass : #CEntity,
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'C-Entities-Entities'
}

{ #category : #meta }
CAssociation class >> annotation [

	<FMClass: #Association super: #CEntity>
	<package: #'C-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
CAssociation >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
CAssociation >> name: anObject [
	<generated>
	name := anObject
]
