"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeContainer` | `FamixTType` | `types` | `FamixTWithTypes` | Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).|

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `comments` | `FamixTWithComments` | `commentedEntity` | `FamixTComment` | List of comments for the entity|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `incomingReferences` | `FamixTReferenceable` | `referredEntity` | `FamixTReference` | References to this entity by other entities.|
| `incomingTypings` | `FamixTType` | `declaredType` | `FamixTEntityTyping` | Relations to the entities that have this as type.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|
| `typeAliases` | `FamixTWithTypeAliases` | `aliasedType` | `FamixTTypeAlias` | Aliases|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixCType',
	#superclass : 'FamixCContainerEntity',
	#traits : 'FamixTType + FamixTWithComments + FamixTWithTypeAliases',
	#classTraits : 'FamixTType classTrait + FamixTWithComments classTrait + FamixTWithTypeAliases classTrait',
	#category : 'Famix-C-Entities',
	#package : 'Famix-C-Entities'
}

{ #category : 'meta' }
FamixCType class >> annotation [

	<FMClass: #Type super: #FamixCContainerEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
