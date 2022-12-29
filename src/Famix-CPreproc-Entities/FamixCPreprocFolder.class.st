Class {
	#name : #FamixCPreprocFolder,
	#superclass : #FamixCPreprocDiskEntity,
	#instVars : [
		'#children => FMMany type: #FamixCPreprocDiskEntity opposite: #parentFolder'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
FamixCPreprocFolder class >> annotation [

	<FMClass: #Folder super: #FamixCPreprocDiskEntity>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCPreprocFolder >> addChildren: anObject [
	<generated>
	^ self children add: anObject
]

{ #category : #accessing }
FamixCPreprocFolder >> children [
	"Relation named: #children type: #FamixCPreprocDiskEntity opposite: #parentFolder"

	<generated>
	<derived>
	^ children
]

{ #category : #accessing }
FamixCPreprocFolder >> children: anObject [

	<generated>
	children value: anObject
]
