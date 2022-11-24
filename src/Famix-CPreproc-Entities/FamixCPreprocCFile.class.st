Class {
	#name : #FamixCPreprocCFile,
	#superclass : #FamixCPreprocEntity,
	#traits : 'FamixTNamedEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamedEntity classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#includes => FMMany type: #FamixCPreprocInclude opposite: #includedBy',
		'#inclusion => FMMany type: #FamixCPreprocInclude opposite: #included',
		'#parentFolder => FMOne type: #FamixCPreprocFolder opposite: #files'
	],
	#classInstVars : [
		'#parentFolder'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
FamixCPreprocCFile class >> annotation [

	<FMClass: #CFile super: #FamixCPreprocEntity>
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
FamixCPreprocCFile >> fullName [
    ^(parentFolder ifNotNil: [ parentFolder fullName , '/' ] ifNil: [ '' ]) , name
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

{ #category : #accessing }
FamixCPreprocCFile >> parentFolder [
	"Relation named: #parentFolder type: #FamixCPreprocFolder opposite: #files"

	<generated>
	<container>
	^ parentFolder
]

{ #category : #accessing }
FamixCPreprocCFile >> parentFolder: anObject [

	<generated>
	parentFolder := anObject
]

{ #category : #navigation }
FamixCPreprocCFile >> parentFolderGroup [
	<generated>
	<navigation: 'ParentFolder'>
	^ MooseSpecializedGroup with: self parentFolder
]
