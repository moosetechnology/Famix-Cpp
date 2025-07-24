"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `containerFiles` | `FamixTWithFiles` | `entities` | `FamixTFile` | List of files containing the entity|
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
