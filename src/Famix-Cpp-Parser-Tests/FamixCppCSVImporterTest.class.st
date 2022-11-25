Class {
	#name : #FamixCppCSVImporterTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'Famix-Cpp-Parser-Tests'
}

{ #category : #helpers }
FamixCppCSVImporterTest >> missingDeclarationFile [
	^ '#Files
fileId,path
#Namespaces
id,name,parentId,file,line,column
#Types
id,name
#Classes
id,name,typeId,parentId,file,line,column,abstract,trivial,kind
#Funcs
id,name,typeId,parentId,file,line,column,lineE,vindex
#Vars
id,name,typeId,parentId,file,line,column
#Edges
sourceId,targetId,file,line,column,edgeType' 
]

{ #category : #helpers }
FamixCppCSVImporterTest >> onlyDeclarationFile [
	^ '#Files
fileId,path
#Namespaces
id,name,parentId,file,line,column
#Packages
id,name,parentId
#Types
id,name
#Classes
id,name,typeId,parentId,file,line,column,abstract,trivial,kind,packageId
#Enums
id,name,typeId,parentId,file,line,column,packageId
#Funcs
id,name,typeId,parentId,file,line,column,lineE,vindex
#Vars
id,name,typeId,parentId,file,line,column
#Edges
sourceId,targetId,file,line,column,edgeType' 
]

{ #category : #running }
FamixCppCSVImporterTest >> setUp [
	super setUp.
	model := FamixCppModel new
]

{ #category : #tests }
FamixCppCSVImporterTest >> testMissingDeclarationFile [
	self should: [ FamixCppCSVImporter runOn: nil withRefFile: self missingDeclarationFile withModel: model ] raise: Error
]

{ #category : #tests }
FamixCppCSVImporterTest >> testOnlyDeclarations [

	<expectedFailure>
	FamixCppCSVImporter
		runOn: nil
		withRefFile: self onlyDeclarationFile
		withModel: model
]
