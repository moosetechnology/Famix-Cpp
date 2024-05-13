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
| `source` | `String` | nil | Actual source code of the source entity|

"
Class {
	#name : #FamixCSourceTextAnchor,
	#superclass : #FamixCSourceAnchor,
	#traits : 'FamixTHasImmediateSource',
	#classTraits : 'FamixTHasImmediateSource classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCSourceTextAnchor class >> annotation [

	<FMClass: #SourceTextAnchor super: #FamixCSourceAnchor>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
