Class {
	#name : #CPreprocInclude,
	#superclass : #CPreprocEntity,
	#traits : 'FamixTAssociation',
	#classTraits : 'FamixTAssociation classTrait',
	#instVars : [
		'#included => FMOne type: #CPreprocCFile opposite: #inclusion',
		'#includedBy => FMOne type: #CPreprocCFile opposite: #includes',
		'#isLocal => FMProperty'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
CPreprocInclude class >> annotation [

	<FMClass: #Include super: #CPreprocEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
CPreprocInclude >> included [
	"Relation named: #included type: #CPreprocCFile opposite: #inclusion"

	<generated>
	<FMComment: 'C-File included'>
	<target>
	^ included
]

{ #category : #accessing }
CPreprocInclude >> included: anObject [

	<generated>
	included := anObject
]

{ #category : #accessing }
CPreprocInclude >> includedBy [
	"Relation named: #includedBy type: #CPreprocCFile opposite: #includes"

	<generated>
	<FMComment: 'C-File including the receiver'>
	<source>
	^ includedBy
]

{ #category : #accessing }
CPreprocInclude >> includedBy: anObject [

	<generated>
	includedBy := anObject
]

{ #category : #accessing }
CPreprocInclude >> isLocal [

	<FMProperty: #isLocal type: #Boolean>
	<generated>
	^ isLocal
]

{ #category : #accessing }
CPreprocInclude >> isLocal: anObject [
	<generated>
	isLocal := anObject
]
