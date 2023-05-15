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
	^self
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
