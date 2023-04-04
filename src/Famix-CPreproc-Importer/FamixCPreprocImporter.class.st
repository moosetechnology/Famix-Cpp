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
	model := FamixCPreprocModel new.
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

	rootFolder := anObject asFileReference
]

{ #category : #running }
FamixCPreprocImporter >> runOn: anXMLFilepath [
	|filename modelName|
	(anXMLFilepath asFileReference readStreamDo: [ :stream | 
		 XMLDOMParser parse: stream ]) acceptNodeVisitor: visitor.
   filename := (anXMLFilepath splitOn: '/') last.
   modelName := filename copyReplaceAll: '.xml' with: ''.
	model name: modelName.
	model install.
]

{ #category : #'accessing - testing' }
FamixCPreprocImporter >> visitor [
	^visitor 
]
