"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeContainer` | `FamixCType` | `types` | `FamixCCompilationUnit` | Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).|
| `typeContainer` | `FamixTType` | `types` | `FamixTWithTypes` | Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).|

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
	#traits : 'FamixTType + FamixTWithTypeAliases',
	#classTraits : 'FamixTType classTrait + FamixTWithTypeAliases classTrait',
	#instVars : [
		'#typeContainer => FMOne type: #FamixCCompilationUnit opposite: #types'
	],
	#category : '_UnpackagedPackage',
	#package : '_UnpackagedPackage'
}

{ #category : 'meta' }
FamixCType class >> annotation [

	<FMClass: #Type super: #FamixCContainerEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixCType >> typeContainer [
	"Relation named: #typeContainer type: #FamixCCompilationUnit opposite: #types"

	<generated>
	<FMComment: 'Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).'>
	<container>
	^ typeContainer
]

{ #category : 'accessing' }
FamixCType >> typeContainer: anObject [

	<generated>
	typeContainer := anObject
]

{ #category : 'navigation' }
FamixCType >> typeContainerGroup [
	<generated>
	<navigation: 'TypeContainer'>
	^ MooseSpecializedGroup with: self typeContainer
]
