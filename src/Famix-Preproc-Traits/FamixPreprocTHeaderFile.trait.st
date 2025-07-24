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
Trait {
	#name : 'FamixPreprocTHeaderFile',
	#traits : 'FamixPreprocTFile + FamixTCanBeStub + FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixPreprocTFile classTrait + FamixTCanBeStub classTrait + FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTHeaderFile classSide >> annotation [

	<FMClass: #THeaderFile super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]
