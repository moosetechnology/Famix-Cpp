"
TODO
"
Class {
	#name : #FamixCppGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'attribute',
		'containerEntity',
		'globalVariable',
		'inheritance',
		'invocation',
		'method',
		'namespace',
		'package',
		'function',
		'type',
		'behavioralEntity',
		'fileAnchor',
		'multipleFileAnchor',
		'association',
		'block',
		'condition',
		'conditional',
		'for',
		'if',
		'switch',
		'while',
		'relativeSourceAnchor'
	],
	#category : #'Famix-Cpp-Generator'
}

{ #category : #accessing }
FamixCppGenerator class >> packageName [

	<ignoreForCoverage>
	^ 'Famix-Cpp-Entities'
]

{ #category : #accessing }
FamixCppGenerator class >> prefix [
	^ #'FamixCpp'
]

{ #category : #accessing }
FamixCppGenerator class >> submetamodels [
	^ { FamixGenerator }
]

{ #category : #definition }
FamixCppGenerator >> defineClasses [
	super defineClasses.
	
	association := builder newClassNamed: #Association.

	fileAnchor := builder newClassNamed: #FileAnchor.
	multipleFileAnchor := builder newClassNamed: #MultipleFileAnchor.

	access := builder newClassNamed: #Access.
	attribute := builder newClassNamed: #Attribute.
	behavioralEntity := builder newClassNamed: #BehaviouralEntity.
	containerEntity := builder newClassNamed: #ContainerEntity.
	function := builder newClassNamed: #Function.
	globalVariable := builder newClassNamed: #GlobalVariable.
	inheritance := builder newClassNamed: #Inheritance.
	invocation := builder newClassNamed: #Invocation.
	method := builder newClassNamed: #Method.
	namespace := builder newClassNamed: #Namespace.
	package := builder newClassNamed: #Package.
	type := builder newClassNamed: #Type.

	"block := builder newClassNamed: #Block.
	condition := builder newClassNamed: #Condition.
	conditional  := builder newClassNamed: #Conditional.
	for := builder newClassNamed: #For.
	if := builder newClassNamed: #If.
	switch := builder newClassNamed: #Switch.
	while := builder newClassNamed: #While."

	relativeSourceAnchor := builder newClassNamed: #RelativeSourceAnchor
]

{ #category : #definition }
FamixCppGenerator >> defineHierarchy [
	super defineHierarchy.

	access --|> association.
	access --|> #TAccess.
	
	association --|> sourcedEntity.
	association --|> #TAssociation.

	attribute --|> namedEntity.
	attribute --|> #TAttribute.
	attribute --|> #TInvocationsReceiver.
	"attribute --|> #TWithClassScope."

	behavioralEntity --|> containerEntity.
	behavioralEntity --|> #TWithInvocations.
	behavioralEntity --|> #TInvocable.
	behavioralEntity --|> #TWithAccesses.
	behavioralEntity --|> #TWithStatements.
	
	comment --|> sourcedEntity.
	comment --|> #TComment.

	containerEntity --|> namedEntity.

	globalVariable --|> namedEntity.
	globalVariable --|> #TGlobalVariable.

	fileAnchor --|> sourceAnchor.
	fileAnchor --|> #TFileNavigation.

	function --|> behavioralEntity.
	function --|> #TFunction.

	inheritance --|> association.
	inheritance --|> #TInheritance.

	invocation --|> association.
	invocation --|> #TInvocation.

	method --|> behavioralEntity.
	method --|> #TMethod.
	method --|> #THasModifiers.
	method --|> #TWithTypes.
	method --|> #THasKind.
	method withPrecedenceOf: #THasModifiers.

	multipleFileAnchor --|> sourceAnchor.
	multipleFileAnchor --|> #TMultipleFileAnchor.

	namedEntity --|> sourcedEntity.
	namedEntity --|> #TNamedEntity.
	namedEntity --|> #TEntityMetaLevelDependency.
	namedEntity --|> #THasModifiers.

	namespace --|> containerEntity.
	namespace --|> #TNamespace.
	namespace --|> #TWithFunctions.
	namespace --|> #TWithClasses.
	namespace --|> #TWithGlobalVariables.

	package --|> containerEntity.
	package --|> #TPackage.
	package --|> #TWithFunctions.
	package --|> #TPackageable.

	"sourceAnchor --|> entity."
	sourceAnchor --|> #TSourceAnchor.

	"sourcedEntity --|> entity."
	sourcedEntity --|> #TSourceEntity.

	type --|> containerEntity.
	type --|> #TClass.
	type --|> #THasModifiers.
	type --|> #TWithTypes.
	
	block --|> behavioralEntity.
	block testingSelector: #isCPPSBlock.
	
	condition --|> block.

	conditional --|> block.

	for --|> conditional.
	
	if --|> conditional.
	
	switch --|> conditional.
	
	while --|> conditional.
	
	relativeSourceAnchor --|> #TRelativeSourceAnchor
]

{ #category : #definition }
FamixCppGenerator >> defineRelations [
	((behavioralEntity property: #innerBlocks) comment: 'Blocks declared in this behavioural')
		-* ((block property: #parentBlock) comment: '"Block" containing this block. belongsTo implementation').
		
		
	self flag: #todo. "Improve properties names"
	((namespace property: #parentScope)
			comment: 'Parent scope embedding this scope, if any.';
			container)
		*-
	((namespace property: #childScopes)
			comment: 'Child scopes embedded in this scope, if any.').
]
