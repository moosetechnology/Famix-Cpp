"
A FamixCPreprocVisitorTest is a test class for testing the behavior of FamixCPreprocVisitor
"
Class {
	#name : #FamixCPreprocVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'importer',
		'visitor',
		'model'
	],
	#category : #'Famix-CPreproc-Importer-Tests'
}

{ #category : #running }
FamixCPreprocVisitorTest >> newEntity: class named: aString [
	^class new name: aString ; mooseModel: model ; yourself.
]

{ #category : #running }
FamixCPreprocVisitorTest >> setUp [
	super setUp.
	
	importer := FamixCPreprocImporter new.
	visitor := importer visitor.
	model := importer model.
]

{ #category : #test }
FamixCPreprocVisitorTest >> testCreateFileAbsolute [
	| file |
	
	self assert: model isEmpty.

	file := visitor createFile: './dir/file.test'.

	self assert: model size equals: 3.

	self assert: file name equals: 'file.test'.
	self assert: file class equals: FamixCPreprocHeaderFile.
	self assert: file parentFolder name equals: 'dir'.
	self assert: file parentFolder class equals: FamixCPreprocFolder
]

{ #category : #test }
FamixCPreprocVisitorTest >> testCreateFileRelative [
	| file |
	
	self assert: model isEmpty.

	file := visitor createFile: './dir/file.test'.

	self assert: model size equals: 3.

	self assert: file name equals: 'file.test'.
	self assert: file class equals: FamixCPreprocHeaderFile.
	self assert: file parentFolder name equals: 'dir'.
	self assert: file parentFolder class equals: FamixCPreprocFolder 
]

{ #category : #test }
FamixCPreprocVisitorTest >> testCreateIncludeExistingFile [
	| includingFile includedFile dir |
	dir := self newEntity: FamixCPreprocFolder named: '.'.
	includingFile := self newEntity: FamixCPreprocHeaderFile named: 'test.file'.
	visitor file: includingFile.
	includedFile := (self newEntity: FamixCPreprocHeaderFile named: 'included.file') parentFolder: dir ; yourself.

	self assert: includingFile includes isEmpty.
	self assert: includingFile inclusion isEmpty.
	
	self assert: includedFile includes isEmpty.
	self assert: includedFile inclusion isEmpty.
	
	visitor createInclude: './included.file'.

	self assert: includingFile includes size equals: 1.
	self assert: includingFile inclusion isEmpty.
	self assert: includingFile includes first included equals: includedFile.

	self assert: includedFile includes isEmpty.	
	self assert: includedFile inclusion size equals: 1.
	self assert: includedFile inclusion first includedBy equals: includingFile.

]

{ #category : #test }
FamixCPreprocVisitorTest >> testCreateIncludeNewFile [
	| includingFile includedFile |
	includingFile := self newEntity: FamixCPreprocHeaderFile named: 'test.file'.
	visitor file: includingFile.

	self assert: includingFile includes isEmpty.
	self assert: includingFile inclusion isEmpty.
	
	visitor createInclude: './included.file'.

	includedFile := model entityNamed: 'included.file'.

	self assert: includingFile includes size equals: 1.
	self assert: includingFile inclusion isEmpty.
	self assert: includingFile includes first included equals: includedFile.

	self assert: includedFile includes isEmpty.	
	self assert: includedFile inclusion size equals: 1.
	self assert: includedFile inclusion first includedBy equals: includingFile.

]

{ #category : #test }
FamixCPreprocVisitorTest >> testCreateInclusionLocalToCurrentFile [
	| includingFile includedFile dir |
   1halt.
	dir := self newEntity: FamixCPreprocFolder named: '.'.
	dir := (self newEntity: FamixCPreprocFolder named: 'dir') parentFolder: dir ; yourself.
	includingFile := (self newEntity: FamixCPreprocHeaderFile named: 'test.file') parentFolder: dir ; yourself.

	visitor file: includingFile.

	self assert: includingFile parentFolder name equals: 'dir'.
	
	visitor createInclude: './included.file'.

	includedFile := model entityNamed: 'included.file'.

	self assert: includedFile parentFolder name equals: '.'.
]

{ #category : #test }
FamixCPreprocVisitorTest >> testFolderFromPathAbsolute [

	| folder |
	self assert: importer model isEmpty.
	folder := visitor famixFolderFromPath: './dir' asPath.
	
	self assert: importer model size equals: 2.
	self assert: folder name equals: 'dir'.
	self assert: folder parentFolder name equals: '.'.
	self assert: folder parentFolder parentFolder isNil
]

{ #category : #test }
FamixCPreprocVisitorTest >> testFolderFromPathRelative [
	| folder |
	self assert: importer model isEmpty.
	
	folder := visitor famixFolderFromPath: './dir' asPath.
	
	self assert: importer model size equals: 2.
	self assert: folder name equals: 'dir'.
	self assert: folder parentFolder name equals: '.'.
	self assert: folder parentFolder parentFolder isNil.
]

{ #category : #test }
FamixCPreprocVisitorTest >> testPathOfFileAbsolute [

	self assert: (visitor pathOfFile: '/dir/file.test') basename equals: 'file.test'.
	self assert: (visitor pathOfFile: '/dir/file.test') parent basename equals: 'dir'.
	self assert: (visitor pathOfFile: '/dir/file.test') parent parent isRoot
]

{ #category : #test }
FamixCPreprocVisitorTest >> testPathOfFileRelative [

	self assert: (visitor pathOfFile: './dir/file.test') basename equals: 'file.test'.
	self assert: (visitor pathOfFile: './dir/file.test') parent basename equals: 'dir'.
	self assert: (visitor pathOfFile: './dir/file.test') parent parent fullName equals: importer rootFolder fullName
]

{ #category : #test }
FamixCPreprocVisitorTest >> testPathOfFileRelativeDotDot [

	self assert: (visitor pathOfFile: '../dir/file.test') basename equals: 'file.test'.
	self assert: (visitor pathOfFile: '../dir/file.test') parent basename equals: 'dir'.
	self assert: (visitor pathOfFile: '../dir/file.test') parent parent fullName equals: importer rootFolder parent fullName.

]
