"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourcedEntities` | `FamixTSourceLanguage` | `declaredSourceLanguage` | `FamixTWithSourceLanguages` | References to the entities saying explicitly that are written in this language.|



"
Class {
	#name : 'FamixCSourceLanguage',
	#superclass : 'FamixCPreprocEntity',
	#traits : 'FamixTSourceLanguage',
	#classTraits : 'FamixTSourceLanguage classTrait',
	#category : 'Famix-C-Entities-Entities',
	#package : 'Famix-C-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCSourceLanguage class >> annotation [

	<FMClass: #SourceLanguage super: #FamixCPreprocEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]
