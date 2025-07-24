Extension { #name : 'FamixTFile' }

{ #category : '*Famix-Preproc-Traits-accessing' }
FamixTFile >> includes [
	"Relation named: #includes type: #FamixPreprocTInclude opposite: #includedBy"

	<generated>
	<FMComment: 'All inclusions made by this C-File'>
	<derived>
	<FMProperty: #includes type: #FamixPreprocTInclude opposite: #includedBy>
	<package: #'Famix-Preproc-Traits'>
	^ self attributeAt: #includes ifAbsentPut: [ FMMultivalueLink on: self opposite: #includedBy: ]
]

{ #category : '*Famix-Preproc-Traits-accessing' }
FamixTFile >> includes: anObject [

	<generated>
	self includes value: anObject
]

{ #category : '*Famix-Preproc-Traits-accessing' }
FamixTFile >> inclusion [
	"Relation named: #inclusion type: #FamixPreprocTInclude opposite: #included"

	<generated>
	<FMComment: 'All inclusions of this C-file'>
	<derived>
	<FMProperty: #inclusion type: #FamixPreprocTInclude opposite: #included>
	<package: #'Famix-Preproc-Traits'>
	^ self attributeAt: #inclusion ifAbsentPut: [ FMMultivalueLink on: self opposite: #included: ]
]

{ #category : '*Famix-Preproc-Traits-accessing' }
FamixTFile >> inclusion: anObject [

	<generated>
	self inclusion value: anObject
]
