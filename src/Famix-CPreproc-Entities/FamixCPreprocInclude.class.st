"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `includedBy` | `FamixCPreprocInclude` | `includes` | `FamixCPreprocCFile` | C-File including the receiver|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `included` | `FamixCPreprocInclude` | `inclusion` | `FamixCPreprocCFile` | C-File included|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `isLocal` | `Boolean` | nil | Whether this is a local include (with ""included.h"") or a system one (with <included.h>)|
| `isStub` | `Boolean` | false | Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.|

"
Class {
	#name : #FamixCPreprocInclude,
	#superclass : #FamixCPreprocEntity,
	#traits : 'FamixTAssociation',
	#classTraits : 'FamixTAssociation classTrait',
	#instVars : [
		'#isLocal => FMProperty',
		'#included => FMOne type: #FamixCPreprocCFile opposite: #inclusion',
		'#includedBy => FMOne type: #FamixCPreprocCFile opposite: #includes'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
FamixCPreprocInclude class >> annotation [

	<FMClass: #Include super: #FamixCPreprocEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixCPreprocInclude >> included [
	"Relation named: #included type: #FamixCPreprocCFile opposite: #inclusion"

	<generated>
	<FMComment: 'C-File included'>
	<target>
	^ included
]

{ #category : #accessing }
FamixCPreprocInclude >> included: anObject [

	<generated>
	included := anObject
]

{ #category : #accessing }
FamixCPreprocInclude >> includedBy [
	"Relation named: #includedBy type: #FamixCPreprocCFile opposite: #includes"

	<generated>
	<FMComment: 'C-File including the receiver'>
	<source>
	^ includedBy
]

{ #category : #accessing }
FamixCPreprocInclude >> includedBy: anObject [

	<generated>
	includedBy := anObject
]

{ #category : #accessing }
FamixCPreprocInclude >> isLocal [

	<FMProperty: #isLocal type: #Boolean>
	<generated>
	<FMComment: 'Whether this is a local include (with "included.h") or a system one (with <included.h>)'>
	^ isLocal
]

{ #category : #accessing }
FamixCPreprocInclude >> isLocal: anObject [
	<generated>
	isLocal := anObject
]
