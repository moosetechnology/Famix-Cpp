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



"
Trait {
	#name : 'FamixPreprocTFile',
	#instVars : [
		'#inclusion => FMMany type: #FamixPreprocTInclude opposite: #included',
		'#includes => FMMany type: #FamixPreprocTInclude opposite: #includedBy'
	],
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTFile classSide >> annotation [

	<FMClass: #TFile super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]

{ #category : 'adding' }
FamixPreprocTFile >> addInclude: anObject [
	<generated>
	^ self includes add: anObject
]

{ #category : 'adding' }
FamixPreprocTFile >> addInclusion: anObject [
	<generated>
	^ self inclusion add: anObject
]

{ #category : 'accessing' }
FamixPreprocTFile >> includes [
	"Relation named: #includes type: #FamixPreprocTInclude opposite: #includedBy"

	<generated>
	<FMComment: 'All inclusions made by this C-File'>
	<derived>
	^ includes
]

{ #category : 'accessing' }
FamixPreprocTFile >> includes: anObject [

	<generated>
	includes value: anObject
]

{ #category : 'accessing' }
FamixPreprocTFile >> inclusion [
	"Relation named: #inclusion type: #FamixPreprocTInclude opposite: #included"

	<generated>
	<FMComment: 'All inclusions of this C-file'>
	<derived>
	^ inclusion
]

{ #category : 'accessing' }
FamixPreprocTFile >> inclusion: anObject [

	<generated>
	inclusion value: anObject
]
