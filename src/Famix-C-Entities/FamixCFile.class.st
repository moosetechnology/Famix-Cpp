"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentFolder` | `FamixTFileSystemEntity` | `childrenFileSystemEntities` | `FamixTFolder` | Folder entity containing this file.|

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `includes` | `FamixTFile` | `includedBy` | `FamixPreprocTInclude` | All inclusions made by this C-File|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `inclusion` | `FamixTFile` | `included` | `FamixPreprocTInclude` | All inclusions of this C-file|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `entities` | `FamixTFile` | `containerFiles` | `FamixTWithFiles` | List of entities defined in the file|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixCFile',
	#superclass : 'FamixCEntity',
	#traits : 'FamixTFile',
	#classTraits : 'FamixTFile classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCFile class >> annotation [

	<FMClass: #File super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
