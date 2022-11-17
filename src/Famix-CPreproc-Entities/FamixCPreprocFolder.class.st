Class {
	#name : #FamixCPreprocFolder,
	#superclass : #FamixCPreprocCFile,
	#instVars : [
		'#files => FMMany type: #FamixCPreprocCFile opposite: #parentFolder'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
FamixCPreprocFolder class >> annotation [

	<FMClass: #Folder super: #FamixCPreprocCFile>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCPreprocFolder >> addFile: anObject [
	<generated>
	^ self files add: anObject
]

{ #category : #accessing }
FamixCPreprocFolder >> files [
	"Relation named: #files type: #FamixCPreprocCFile opposite: #parentFolder"

	<generated>
	<derived>
	^ files
]

{ #category : #accessing }
FamixCPreprocFolder >> files: anObject [

	<generated>
	files value: anObject
]
