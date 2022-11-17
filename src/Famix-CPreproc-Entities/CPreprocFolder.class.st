Class {
	#name : #CPreprocFolder,
	#superclass : #CPreprocCFile,
	#instVars : [
		'#files => FMMany type: #CPreprocCFile opposite: #parentFolder'
	],
	#category : #'Famix-CPreproc-Entities-Entities'
}

{ #category : #meta }
CPreprocFolder class >> annotation [

	<FMClass: #Folder super: #CPreprocCFile>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^self
]

{ #category : #adding }
CPreprocFolder >> addFile: anObject [
	<generated>
	^ self files add: anObject
]

{ #category : #accessing }
CPreprocFolder >> files [
	"Relation named: #files type: #CPreprocCFile opposite: #parentFolder"

	<generated>
	<derived>
	^ files
]

{ #category : #accessing }
CPreprocFolder >> files: anObject [

	<generated>
	files value: anObject
]
