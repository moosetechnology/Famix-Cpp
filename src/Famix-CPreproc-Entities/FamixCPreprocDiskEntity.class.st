"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentFolder` | `FamixCPreprocDiskEntity` | `children` | `FamixCPreprocFolder` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `name` | `String` | nil | Basic name of the entity, not full reference.|

"
Class {
	#name : 'FamixCPreprocDiskEntity',
	#superclass : 'FamixCPreprocEntity',
	#traits : 'FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#parentFolder => FMOne type: #FamixCPreprocFolder opposite: #children'
	],
	#category : 'Famix-CPreproc-Entities-Entities',
	#package : 'Famix-CPreproc-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCPreprocDiskEntity class >> annotation [

	<FMClass: #DiskEntity super: #FamixCPreprocEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixCPreprocDiskEntity >> fullName [
    ^(parentFolder ifNotNil: [ parentFolder fullName , '/' ] ifNil: [ '' ]) , name
]

{ #category : 'accessing' }
FamixCPreprocDiskEntity >> parentFolder [
	"Relation named: #parentFolder type: #FamixCPreprocFolder opposite: #children"

	<generated>
	<container>
	^ parentFolder
]

{ #category : 'accessing' }
FamixCPreprocDiskEntity >> parentFolder: anObject [

	<generated>
	parentFolder := anObject
]

{ #category : 'navigation' }
FamixCPreprocDiskEntity >> parentFolderGroup [
	<generated>
	<navigation: 'ParentFolder'>
	^ MooseSpecializedGroup with: self parentFolder
]
