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
| `fileAnchors` | `FamixTFileAnchor` | nil | All source code definition files|

"
Class {
	#name : 'FamixCMultipleFileAnchor',
	#superclass : 'FamixCSourceAnchor',
	#traits : 'FamixTMultipleFileAnchor',
	#classTraits : 'FamixTMultipleFileAnchor classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCMultipleFileAnchor class >> annotation [

	<FMClass: #MultipleFileAnchor super: #FamixCSourceAnchor>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
