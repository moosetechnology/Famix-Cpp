Class {
	#name : #FamixCGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'aliasType',
		'association',
		'attribute',
		'behaviouralEntity',
		'compilationUnit',
		'containerEntity',
		'derefInvocation',
		'enum',
		'enumValue',
		'function',
		'globalVar',
		'headerFile',
		'indexedFileAnchor',
		'invocation',
		'localVar',
		'multipleFileAnchor',
		'parameter',
		'primitiveType',
		'reference',
		'relativeSourceAnchor',
		'struct',
		'type',
		'union',
		'unknownBehaviour',
		'unknownContainerEntity',
		'unknownVar',
		'behaviouralPointer',
		'namespace'
	],
	#category : #'Famix-C-Generator'
}

{ #category : #accessing }
FamixCGenerator class >> packageName [
    ^ #'Famix-C-Entities'
]

{ #category : #accessing }
FamixCGenerator class >> prefix [
    ^ #'FamixC'
]

{ #category : #accessing }
FamixCGenerator class >> submetamodels [
    ^ { FamixCPreprocGenerator  }
]

{ #category : #definition }
FamixCGenerator >> defineClasses [
	super defineClasses.
	
	"Anchors"
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	multipleFileAnchor := builder newClassNamed: #MultipleFileAnchor.
	relativeSourceAnchor := builder newClassNamed: #RelativeSourceAnchor.
	
	"SourcedEntity: Association"
	association := builder newClassNamed: #Association.
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	reference := builder newClassNamed: #Reference.
	behaviouralPointer := builder newClassNamed: #BehaviouralPointer.
	derefInvocation := builder newClassNamed: #DereferencedInvocation.

	"CFiles"
	compilationUnit := self remoteEntity: #CompilationUnit withPrefix: #FamixCPreproc. 
	headerFile := self remoteEntity: #HeaderFile withPrefix: #FamixCPreproc. 

	attribute := builder newClassNamed: #Attribute.
	globalVar := builder newClassNamed: #GlobalVariable.
	localVar := builder newClassNamed: #LocalVariable.
	"Namespace are actually for C++, but functions and globalVariables need to be
	contained in them, so it is introduced here"
	namespace := builder newClassNamed: #Namespace.
	unknownVar := builder newClassNamed: #UnknownVariable.
	parameter := builder newClassNamed: #Parameter.
	enumValue := builder newClassNamed: #EnumValue.
	
	"NamedEntity: ContainerEntity"
	containerEntity := builder newClassNamed: #ContainerEntity.
	unknownContainerEntity := builder newClassNamed: #UnknownContainerEntity.
	
	"ContainerEntity: Type"
	type := builder newClassNamed: #Type.
	primitiveType := builder newClassNamed: #PrimitiveType.
	struct := builder newClassNamed: #Struct.
	enum := builder newClassNamed: #Enum.
	union := builder newClassNamed: #Union.
	aliasType := builder newClassNamed: #AliasType.

   "ContainerEntity: BehaviouralEntity"
	behaviouralEntity := builder newClassNamed: #BehaviouralEntity.
	function := builder newClassNamed: #Function.
	unknownBehaviour := builder newClassNamed: #UnknownBehaviouralEntity.
]

{ #category : #definition }
FamixCGenerator >> defineHierarchy [
   super defineHierarchy.

   "Anchors"
	sourceAnchor --|> #TSourceAnchor.
	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.
	sourceTextAnchor --|> sourceAnchor.
	sourceTextAnchor --|> #THasImmediateSource.
	multipleFileAnchor --|> sourceAnchor.
	multipleFileAnchor --|> #TMultipleFileAnchor.
	relativeSourceAnchor --|> #TRelativeSourceAnchor.
	sourceLanguage --|> #TSourceLanguage.
	unknownSourceLanguage --|> sourceLanguage.
	unknownSourceLanguage --|> #TUnknownSourceLanguage.

	"entities"

	access --|> association.
   access --|> #TAccess.

	aliasType --|> type.
	aliasType --|> 	#TTypeAlias.
	
	association --|> sourcedEntity.
	association --|> #TAssociation.

	attribute --|> namedEntity.
	attribute --|> #TAttribute.
	attribute --|> #TInvocationsReceiver.
	
	behaviouralEntity --|> containerEntity.
	behaviouralEntity --|> #TInvocable.
	behaviouralEntity --|> #TWithStatements.
	behaviouralEntity --|> #TWithAccesses.
	behaviouralEntity --|> #TWithInvocations.
   behaviouralEntity --|> #THasSignature.
   behaviouralEntity --|> #TTypedEntity.

   behaviouralPointer --|> association.

   comment --|> sourcedEntity.
   comment --|> #TComment.

	containerEntity --|> namedEntity.

   derefInvocation --|> invocation.
   derefInvocation --|> #TDereferencedInvocation.

	enum --|> type.
	enum --|> #TEnum.
	
	enumValue --|> namedEntity.
	enumValue --|> #TEnumValue.
	enumValue --|> #TAccessible.
	enumValue --|> #TSourceEntity.

	function --|> behaviouralEntity.
	function --|> #TFunction.
	function --|> #TPackageable.

	globalVar --|> namedEntity.
	globalVar --|> #TGlobalVariable.
	globalVar --|> #TPackageable.
	
   invocation --|> association.
	invocation --|> #THasSignature.
	
	localVar --|> namedEntity.
	localVar --|> #TLocalVariable.
	
	namedEntity --|> sourcedEntity.
	namedEntity --|> #TEntityMetaLevelDependency.
	namedEntity --|> #THasModifiers.

	namespace --|> containerEntity.
	namespace --|> #TPackage.  "namespace in C++ are considered as Packages"
	namespace --|> #TPackageable.

	parameter --|> namedEntity.
	parameter --|> #TParameter.
	
	primitiveType --|> type.
	primitiveType --|> #TPrimitiveType.
	
   reference --|> association.
   reference --|> #TReference.

	struct --|> type.
	struct --|> #TWithAttributes.
	struct --|> #TWithComments.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.
	type --|> #TPackageable.

	
   union --|> type.
	union --|> #TWithAttributes.
	union --|> #TWithComments.

	unknownBehaviour --|> behaviouralEntity.

	unknownContainerEntity --|> containerEntity.
	
	unknownVar --|> namedEntity.
	unknownVar --|> #TUnknownVariable.
  
]

{ #category : #definition }
FamixCGenerator >> defineProperties [

	behaviouralEntity property: #numberOfStatements type: #Number.
	behaviouralEntity property: #cyclomaticComplexity type: #Number.

	((behaviouralPointer property: #behaviouralPointed)
			comment: 'Function which is pointed to';
			target)
		*-
	((behaviouralEntity property: #behaviouralAddressers)
			comment: 'All functions which required this address').

	((behaviouralPointer property: #referer)
			comment: 'Function that required this behavioural address';
			source)
		*-
	((behaviouralEntity property: #behaviouralPointers)
			comment: 'All functions which addresses are used in this entity').

]
