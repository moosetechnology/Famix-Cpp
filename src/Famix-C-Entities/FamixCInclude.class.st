"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `includedBy` | `FamixPreprocTInclude` | `includes` | `FamixPreprocTFile` | C-File including the receiver|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `included` | `FamixPreprocTInclude` | `inclusion` | `FamixPreprocTFile` | C-File included|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isLocal` | `Boolean` | nil | Whether this is a local include (with ""included.h"") or a system one (with <included.h>)|

"
Class {
	#name : 'FamixCInclude',
	#superclass : 'FamixCEntity',
	#traits : 'FamixPreprocTInclude',
	#classTraits : 'FamixPreprocTInclude classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCInclude class >> annotation [

	<FMClass: #Include super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
