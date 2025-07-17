"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|

"
Class {
	#name : 'FamixCPreprocHeaderFile',
	#superclass : 'FamixCPreprocCFile',
	#traits : 'FamixTCanBeStub',
	#classTraits : 'FamixTCanBeStub classTrait',
	#category : 'Famix-CPreproc-Entities-Entities',
	#package : 'Famix-CPreproc-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCPreprocHeaderFile class >> annotation [

	<FMClass: #HeaderFile super: #FamixCPreprocCFile>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^ self
]
