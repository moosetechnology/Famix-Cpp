"
## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `correspondingFile` | `FamixTFile` | nil | File associated to this source anchor|
| `encoding` | `String` | nil | A string representing the encoding of a file|
| `endPos` | `Number` | nil | Stop position in the source|
| `fileName` | `String` | nil | Name of the source file|
| `startPos` | `Number` | nil | Start position in the source|

"
Class {
	#name : 'FamixCIndexedFileAnchor',
	#superclass : 'FamixCSourceAnchor',
	#traits : 'FamixTIndexedFileNavigation',
	#classTraits : 'FamixTIndexedFileNavigation classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCIndexedFileAnchor class >> annotation [

	<FMClass: #IndexedFileAnchor super: #FamixCSourceAnchor>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
