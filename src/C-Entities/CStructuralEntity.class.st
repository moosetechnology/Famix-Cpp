Class {
	#name : #CStructuralEntity,
	#superclass : #CEntity,
	#instVars : [
		'#name => FMProperty'
	],
	#category : #'C-Entities-Entities'
}

{ #category : #meta }
CStructuralEntity class >> annotation [

	<FMClass: #StructuralEntity super: #CEntity>
	<package: #'C-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
CStructuralEntity >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
CStructuralEntity >> name: anObject [
	<generated>
	name := anObject
]
