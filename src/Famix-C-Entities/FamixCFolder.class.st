"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentFolder` | `FamixTFileSystemEntity` | `childrenFileSystemEntities` | `FamixTFolder` | Folder entity containing this file.|

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenFileSystemEntities` | `FamixTFolder` | `parentFolder` | `FamixTFileSystemEntity` | List of entities contained in this folder.|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixCFolder',
	#superclass : 'FamixCEntity',
	#traits : 'FamixTFolder',
	#classTraits : 'FamixTFolder classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCFolder class >> annotation [

	<FMClass: #Folder super: #FamixCEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
