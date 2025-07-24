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
Trait {
	#name : 'FamixPreprocTCompilationUnit',
	#traits : 'FamixTCanBeStub + FamixTNamedEntity + FamixTWithFiles',
	#classTraits : 'FamixTCanBeStub classTrait + FamixTNamedEntity classTrait + FamixTWithFiles classTrait',
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTCompilationUnit classSide >> annotation [

	<FMClass: #TCompilationUnit super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]
