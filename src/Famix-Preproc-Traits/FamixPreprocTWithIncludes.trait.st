"
## Relations
======================

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `includes` | `FamixPreprocTWithIncludes` | `includedBy` | `FamixPreprocTInclude` | All inclusions made by this C-File|



"
Trait {
	#name : 'FamixPreprocTWithIncludes',
	#instVars : [
		'#includes => FMMany type: #FamixPreprocTInclude opposite: #includedBy'
	],
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTWithIncludes classSide >> annotation [

	<FMClass: #TWithIncludes super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]

{ #category : 'adding' }
FamixPreprocTWithIncludes >> addInclude: anObject [
	<generated>
	^ self includes add: anObject
]

{ #category : 'accessing' }
FamixPreprocTWithIncludes >> includes [
	"Relation named: #includes type: #FamixPreprocTInclude opposite: #includedBy"

	<generated>
	<FMComment: 'All inclusions made by this C-File'>
	<derived>
	^ includes
]

{ #category : 'accessing' }
FamixPreprocTWithIncludes >> includes: anObject [

	<generated>
	includes value: anObject
]
