Class {
	#name : #FamixCppCSVParserTest,
	#superclass : #PP2CompositeNodeTest,
	#instVars : [
		'model'
	],
	#category : #'Famix-Cpp-Parser-Tests'
}

{ #category : #testing }
FamixCppCSVParserTest >> expectedFailures [

	^ #(#testFunctionCreationWithCommaAroundName
#testFunctionCreationWithBadConstructor #testClassDataLine #parserClass
#testFunctionCreationDependingOnParent #testFunctionCreationWithBadDestructor
#testMultiFileAnchorCreation #testFunctionWithLOCandCyclo #setUp
#testImportTypesPointerReference #testImportTypesInNamspaces)
]

{ #category : #accessing }
FamixCppCSVParserTest >> parserClass [
	^ FamixCppCSVParser 
]

{ #category : #running }
FamixCppCSVParserTest >> setUp [
	super setUp.
	model := FamixCppModel new.
	parser model: model
]

{ #category : #tests }
FamixCppCSVParserTest >> testClassDataLine [
	"#Classes
id,name,typeId,parentId,file,line,column,abstract,trivial,kind,ComplCyclo,ComplComp,totalLoc,execLoc,commentLines,blankLines,totalLines"

	parser savePath: 'foo/bar' forId: '84d730c'.
	self parse: 'Class,AbstractBase,84da46c,84da04c,84d730c,13,7,1,0,0,2,0,4,10,2,1,7' rule: #classe.
	self assert: (parser entitiesMap at: 'Class') name equals: 'AbstractBase'.
	self assert: (parser entitiesMap at: 'Class') numberOfLinesOfCode equals: 10
]

{ #category : #tests }
FamixCppCSVParserTest >> testClearTypeName1 [
	self assert: (parser clearTypeName:'const Counter') equals: 'Counter'
]

{ #category : #tests }
FamixCppCSVParserTest >> testClearTypeName2 [
	self assert: (parser clearTypeName:'Counter [17]') equals: 'Counter'
]

{ #category : #tests }
FamixCppCSVParserTest >> testClearTypeName3 [
	self assert: (parser clearTypeName:'Counter [size1][45][size2]') equals: 'Counter'
]

{ #category : #tests }
FamixCppCSVParserTest >> testFunctionCreationDependingOnParent [
	| function |
	parser entitiesMap
		at: 'Class'
		put:
			(FamixCppType new
				name: 'MyClass';
				sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'Package' put: (FamixCppPackage new sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'typeCode' put: FamixCppType new.
	parser savePath: 'foo/bar' forId: 'sourceFile'.
	self parse: 'funcCode,myFunction(),typeCode,Package,sourceFile,45,1,48,-1' rule: #function.
	function := model entityNamed: '.myFunction()'.
	self assert: function isFunction.
	self assert: function signature equals: 'myFunction()'.
	self assert: function name equals: 'myFunction'.
	self parse: 'methodCode,myMethod(),typeCode,Class,sourceFile,45,1,48,-1' rule: #function.
	self assert: (model entityNamed: 'MyClass.myMethod()') isMethod
]

{ #category : #tests }
FamixCppCSVParserTest >> testFunctionCreationWithBadConstructor [
	parser entitiesMap
		at: 'Class'
		put:
			(FamixCppType new
				name: 'MyClass';
				sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'Package' put: (FamixCppPackage new sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'typeCode' put: FamixCppType new.
	parser savePath: 'foo/bar' forId: 'sourceFile'.
	self parse: 'funcCode,(static initializers for ../insubtkst.cc),typeCode,Class,sourceFile,45,1,48,-1' rule: #function.
	self assert: model allMethods size equals: 1.
	self assert: model allMethods first isStub
]

{ #category : #tests }
FamixCppCSVParserTest >> testFunctionCreationWithBadDestructor [
	parser entitiesMap
		at: 'Class'
		put:
			(FamixCppType new
				name: 'MyClass';
				sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'Package' put: (FamixCppPackage new sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'typeCode' put: FamixCppType new.
	parser savePath: 'foo/bar' forId: 'sourceFile'.
	self parse: 'funcCode,(static destructors for ../ipaddmov.cc),typeCode,Class,sourceFile,45,1,48,-1' rule: #function.
	self assert: model allMethods size equals: 1.
	self assert: model allMethods first isStub
]

{ #category : #tests }
FamixCppCSVParserTest >> testFunctionCreationWithCommaAroundName [
	parser entitiesMap
		at: 'Class'
		put:
			(FamixCppType new
				name: 'MyClass';
				sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'typeCode' put: FamixCppType new.
	parser savePath: 'foo/bar' forId: 'sourceFile'.
	self parse: 'methodCode,"myMethod()",typeCode,Class,sourceFile,45,1,48,-1' rule: #function.
	self assert: (model entityNamed: 'MyClass.myMethod()') isMethod
]

{ #category : #tests }
FamixCppCSVParserTest >> testFunctionWithLOCandCyclo [
	"id,name,typeId,parentId,file,line,column,lineE,vindex,ComplCyclo,ComplComp,totalLoc,execLoc,commentLines,blankLines,totalLines"

	parser entitiesMap
		at: 'Class'
		put:
			(FamixCppType new
				name: 'MyClass';
				sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'Package' put: (FamixCppPackage new sourceAnchor: (FamixCppFileAnchor new mooseModel: model)).
	parser entitiesMap at: 'typeCode' put: FamixCppType new.
	parser savePath: 'foo/bar' forId: 'sourceFile'.
	self parse: '84f310c,dodo(),typeCode,Class,sourceFile,21,6,23,-1,1,0,3,1,0,0,3' rule: #function.
	self assert: (model entityNamed: 'MyClass.dodo()') isMethod.
	self assert: (model entityNamed: 'MyClass.dodo()') cyclomaticComplexity equals: 1.
	self assert: (model entityNamed: 'MyClass.dodo()') numberOfLinesOfCode equals: 3
]

{ #category : #tests }
FamixCppCSVParserTest >> testImportTypesInNamspaces [
	self parse: '672dbd0,PR::Finish::OutputBlockBuffer' rule: #type.
	self assert: model allTypes size equals: 1.
	self assert: model allTypes anyOne name equals: 'OutputBlockBuffer'
]

{ #category : #tests }
FamixCppCSVParserTest >> testImportTypesPointerReference [
	self parse: 'kldfjgs,BSClusterEvent' rule: #type.
	self parse: 'ea8c38c,BSClusterEvent&' rule: #type.
	self parse: '17fe60ac,BSClusterEvent*' rule: #type.
	self parse: 'xcvglkzj,BSClusterEvent**' rule: #type.
	self assert: model allTypes size equals: 1
]

{ #category : #tests }
FamixCppCSVParserTest >> testMultiFileAnchorCreation [
	| anchor |
	anchor := FamixCppFileAnchor new mooseModel: model.
	parser entitiesMap
		at: 'Class'
		put:
			(FamixCppType new
				name: 'MyClass';
				sourceAnchor: anchor).
	parser entitiesMap at: 'typeCode' put: FamixCppType new.
	parser savePath: 'foo/bar' forId: 'sourceFile'.
	self parse: 'methodCode,myMethod(),typeCode,Class,sourceFile,45,1,48,-1' rule: #function.
	self assert: (parser entitiesMap at: 'Class') sourceAnchor class equals: FamixCppMultipleFileAnchor.
	self assert: (parser entitiesMap at: 'Class') sourceAnchor fileAnchors first equals: anchor.
	self assert: (parser entitiesMap at: 'Class') sourceAnchor fileAnchors second fileName equals: 'bar'
]
