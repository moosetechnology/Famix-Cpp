Class {
	#name : #CPreprocCFile,
	#superclass : #CPreprocEntity,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#instVars : [
		'#includes => FMMany type: #CPreprocInclude opposite: #includedBy',
		'#inclusion => FMMany type: #CPreprocInclude opposite: #included',
		'#parentFolder => FMOne type: #CPreprocFolder opposite: #files'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
CPreprocCFile class >> annotation [

	<FMClass: #CFile super: #CPreprocEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #adding }
CPreprocCFile >> addInclude: anObject [
	<generated>
	^ self includes add: anObject
]

{ #category : #adding }
CPreprocCFile >> addInclusion: anObject [
	<generated>
	^ self inclusion add: anObject
]

{ #category : #accessing }
CPreprocCFile >> fullName [
	^(parentFolder ifNotNil: [ parentFolder fullName , '/' ] ifNil: [ '' ]) , name
]

{ #category : #accessing }
CPreprocCFile >> includes [
	"Relation named: #includes type: #CPreprocInclude opposite: #includedBy"

	<generated>
	<FMComment: 'All inclusions made by this C-File'>
	<derived>
	^ includes
]

{ #category : #accessing }
CPreprocCFile >> includes: anObject [

	<generated>
	includes value: anObject
]

{ #category : #accessing }
CPreprocCFile >> inclusion [
	"Relation named: #inclusion type: #CPreprocInclude opposite: #included"

	<generated>
	<FMComment: 'All inclusions of this C-file'>
	<derived>
	^ inclusion
]

{ #category : #accessing }
CPreprocCFile >> inclusion: anObject [

	<generated>
	inclusion value: anObject
]

{ #category : #accessing }
CPreprocCFile >> parentFolder [
	"Relation named: #parentFolder type: #CPreprocFolder opposite: #files"

	<generated>
	<container>
	^ parentFolder
]

{ #category : #accessing }
CPreprocCFile >> parentFolder: anObject [

	<generated>
	parentFolder := anObject
]

{ #category : #navigation }
CPreprocCFile >> parentFolderGroup [
	<generated>
	<navigation: 'ParentFolder'>
	^ MooseSpecializedGroup with: self parentFolder
]
