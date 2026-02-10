"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `correspondingFile` | `FamixTFile` | nil | File associated to this source anchor|
| `encoding` | `String` | nil | A string representing the encoding of a file|
| `endByte` | `Number` | nil | Stop position in the source in number of bytes|
| `fileName` | `String` | nil | Name of the source file|
| `startByte` | `Number` | nil | Start position in the source in number of bytes|

"
Class {
	#name : 'FamixCBytesFileAnchor',
	#superclass : 'FamixCSourceAnchor',
	#traits : 'FamixTBytesFileAnchor',
	#classTraits : 'FamixTBytesFileAnchor classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCBytesFileAnchor class >> annotation [

	<FMClass: #BytesFileAnchor super: #FamixCSourceAnchor>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
