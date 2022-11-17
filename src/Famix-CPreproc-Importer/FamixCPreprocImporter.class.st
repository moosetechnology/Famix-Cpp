Class {
	#name : #FamixCPreprocImporter,
	#superclass : #Object,
	#instVars : [
		'model',
		'visitor',
		'rootFolder'
	],
	#category : #'Famix-CPreproc-Importer'
}

{ #category : #initialization }
FamixCPreprocImporter >> initialize [ 
	model := CPreprocModel new.
	visitor := FamixCPreprocVisitor new importer: self ; yourself.
	rootFolder := '.' asFileReference.
]

{ #category : #accessing }
FamixCPreprocImporter >> model [
	^model
]

{ #category : #accessing }
FamixCPreprocImporter >> model: aMooseModel [
	model := aMooseModel
]

{ #category : #accessing }
FamixCPreprocImporter >> rootFolder [

	^ rootFolder
]

{ #category : #accessing }
FamixCPreprocImporter >> rootFolder: anObject [

	rootFolder := anObject
]

{ #category : #running }
FamixCPreprocImporter >> runOn: anXMLFilename [
	(anXMLFilename asFileReference readStreamDo: [ :stream |
		XMLDOMParser parse: stream
	]) acceptNodeVisitor: visitor
]

{ #category : #'accessing - testing' }
FamixCPreprocImporter >> visitor [
	^visitor 
]
