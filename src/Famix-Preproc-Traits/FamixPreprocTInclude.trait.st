"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `includedBy` | `FamixPreprocTInclude` | `includes` | `FamixTFile` | C-File including the receiver|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `included` | `FamixPreprocTInclude` | `inclusion` | `FamixTFile` | C-File included|

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

"
Trait {
	#name : 'FamixPreprocTInclude',
	#instVars : [
		'#isLocal => FMProperty'
	],
	#traits : 'FamixTAssociation',
	#classTraits : 'FamixTAssociation classTrait',
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTInclude classSide >> annotation [

	<FMClass: #TInclude super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]

{ #category : 'accessing' }
FamixPreprocTInclude >> included [
	"Relation named: #included type: #FamixTFile opposite: #inclusion"

	<generated>
	<FMComment: 'C-File included'>
	<target>
	<FMProperty: #included type: #FamixTFile opposite: #inclusion>
	^ self attributeAt: #included ifAbsent: [ nil ]
]

{ #category : 'accessing' }
FamixPreprocTInclude >> included: anObject [

	<generated>
	self attributeAt: #included put: (FMMultivalueLink on: self update: #inclusion from: self included to: anObject).
]

{ #category : 'accessing' }
FamixPreprocTInclude >> includedBy [
	"Relation named: #includedBy type: #FamixTFile opposite: #includes"

	<generated>
	<FMComment: 'C-File including the receiver'>
	<source>
	<FMProperty: #includedBy type: #FamixTFile opposite: #includes>
	^ self attributeAt: #includedBy ifAbsent: [ nil ]
]

{ #category : 'accessing' }
FamixPreprocTInclude >> includedBy: anObject [

	<generated>
	self attributeAt: #includedBy put: (FMMultivalueLink on: self update: #includes from: self includedBy to: anObject).
]

{ #category : 'accessing' }
FamixPreprocTInclude >> isLocal [

	<FMProperty: #isLocal type: #Boolean>
	<generated>
	<FMComment: 'Whether this is a local include (with "included.h") or a system one (with <included.h>)'>
	^ isLocal
]

{ #category : 'accessing' }
FamixPreprocTInclude >> isLocal: anObject [
	<generated>
	isLocal := anObject
]
