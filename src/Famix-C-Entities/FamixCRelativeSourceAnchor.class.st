"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `element` | `FamixTSourceAnchor` | `sourceAnchor` | `FamixTSourceEntity` | Enable the accessibility to the famix entity that this class is a source pointer for|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | Stop position in the source|
| `relatedAnchor` | `FamixTSourceAnchor` | nil | Source anchor to which I am relative.|
| `startPos` | `Number` | nil | Start position in the source|

"
Class {
	#name : 'FamixCRelativeSourceAnchor',
	#superclass : 'FamixCEntity',
	#traits : 'FamixTRelativeSourceAnchor',
	#classTraits : 'FamixTRelativeSourceAnchor classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCRelativeSourceAnchor class >> annotation [

	<FMClass: #RelativeSourceAnchor super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
