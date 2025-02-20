"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `aliasedType` | `FamixTTypeAlias` | `typeAliases` | `FamixTWithTypeAliases` | Points to the actual type.|



"
Class {
	#name : 'FamixCAliasType',
	#superclass : 'FamixCType',
	#traits : 'FamixTTypeAlias',
	#classTraits : 'FamixTTypeAlias classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCAliasType class >> annotation [

	<FMClass: #AliasType super: #FamixCType>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
