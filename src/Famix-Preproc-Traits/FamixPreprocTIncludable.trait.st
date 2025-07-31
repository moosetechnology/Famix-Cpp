"
## Relations
======================

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `inclusion` | `FamixPreprocTIncludable` | `included` | `FamixPreprocTInclude` | All inclusions of this C-file|



"
Trait {
	#name : 'FamixPreprocTIncludable',
	#instVars : [
		'#inclusion => FMMany type: #FamixPreprocTInclude opposite: #included'
	],
	#category : 'Famix-Preproc-Traits-Traits',
	#package : 'Famix-Preproc-Traits',
	#tag : 'Traits'
}

{ #category : 'meta' }
FamixPreprocTIncludable classSide >> annotation [

	<FMClass: #TIncludable super: #Object>
	<package: #'Famix-Preproc-Traits'>
	<generated>
	^ self
]

{ #category : 'adding' }
FamixPreprocTIncludable >> addInclusion: anObject [
	<generated>
	^ self inclusion add: anObject
]

{ #category : 'accessing' }
FamixPreprocTIncludable >> inclusion [
	"Relation named: #inclusion type: #FamixPreprocTInclude opposite: #included"

	<generated>
	<FMComment: 'All inclusions of this C-file'>
	<derived>
	^ inclusion
]

{ #category : 'accessing' }
FamixPreprocTIncludable >> inclusion: anObject [

	<generated>
	inclusion value: anObject
]
