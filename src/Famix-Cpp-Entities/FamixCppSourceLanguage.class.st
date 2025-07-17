"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourcedEntities` | `FamixTSourceLanguage` | `declaredSourceLanguage` | `FamixTWithSourceLanguages` | References to the entities saying explicitly that are written in this language.|



"
Class {
	#name : 'FamixCppSourceLanguage',
	#superclass : 'FamixCPreprocEntity',
	#traits : 'FamixTSourceLanguage',
	#classTraits : 'FamixTSourceLanguage classTrait',
	#category : 'Famix-Cpp-Entities-Entities',
	#package : 'Famix-Cpp-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCppSourceLanguage class >> annotation [

	<FMClass: #SourceLanguage super: #FamixCPreprocEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]
