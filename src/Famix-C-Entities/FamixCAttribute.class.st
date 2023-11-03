Class {
	#name : #FamixCAttribute,
	#superclass : #FamixCNamedEntity,
	#traits : 'FamixTAttribute + FamixTInvocationsReceiver',
	#classTraits : 'FamixTAttribute classTrait + FamixTInvocationsReceiver classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixCNamedEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
