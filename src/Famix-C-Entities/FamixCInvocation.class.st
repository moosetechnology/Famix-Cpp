"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `signature` | `String` | nil | Signature of the message being sent|

"
Class {
	#name : 'FamixCInvocation',
	#superclass : 'FamixCAssociation',
	#traits : 'FamixTHasSignature',
	#classTraits : 'FamixTHasSignature classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixCAssociation>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
