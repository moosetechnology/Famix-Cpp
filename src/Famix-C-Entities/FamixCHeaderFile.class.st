"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `includes` | `FamixPreprocTFile` | `includedBy` | `FamixPreprocTInclude` | All inclusions made by this C-File|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `inclusion` | `FamixPreprocTFile` | `included` | `FamixPreprocTInclude` | All inclusions of this C-file|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixCHeaderFile',
	#superclass : 'FamixCEntity',
	#traits : 'FamixPreprocTHeaderFile',
	#classTraits : 'FamixPreprocTHeaderFile classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCHeaderFile class >> annotation [

	<FMClass: #HeaderFile super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
