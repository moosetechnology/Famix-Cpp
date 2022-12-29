"
Generator for C language meta model (does not include C++ entities which are in an other meta model)
"
Class {
	#name : #FamixCPreprocCFile,
	#superclass : #FamixCPreprocDiskEntity,
	#traits : 'TEntityMetaLevelDependency',
	#classTraits : 'TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#inclusion => FMMany type: #FamixCPreprocInclude opposite: #included',
		'#includes => FMMany type: #FamixCPreprocInclude opposite: #includedBy'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
FamixCPreprocCFile class >> annotation [

	<FMClass: #CFile super: #FamixCPreprocDiskEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCPreprocCFile >> addInclude: anObject [
	<generated>
	^ self includes add: anObject
]

{ #category : #adding }
FamixCPreprocCFile >> addInclusion: anObject [
	<generated>
	^ self inclusion add: anObject
]

{ #category : #accessing }
FamixCPreprocCFile >> includes [
	"Relation named: #includes type: #FamixCPreprocInclude opposite: #includedBy"

	<generated>
	<FMComment: 'All inclusions made by this C-File'>
	<derived>
	^ includes
]

{ #category : #accessing }
FamixCPreprocCFile >> includes: anObject [

	<generated>
	includes value: anObject
]

{ #category : #accessing }
FamixCPreprocCFile >> inclusion [
	"Relation named: #inclusion type: #FamixCPreprocInclude opposite: #included"

	<generated>
	<FMComment: 'All inclusions of this C-file'>
	<derived>
	^ inclusion
]

{ #category : #accessing }
FamixCPreprocCFile >> inclusion: anObject [

	<generated>
	inclusion value: anObject
]
