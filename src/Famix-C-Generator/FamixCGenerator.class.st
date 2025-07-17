Class {
	#name : 'FamixCGenerator',
	#superclass : 'FamixBasicInfrastructureGenerator',
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
		'namespace',
		'structuredType',
		'entityTyping',
		'cEntity',
		'cPreprocCompilationUnit'
	],
	#category : 'Famix-C-Generator',
	#package : 'Famix-C-Generator'
}

{ #category : 'accessing' }
FamixCGenerator class >> packageName [
    ^ #'Famix-C-Entities'
]

{ #category : 'accessing' }
FamixCGenerator class >> prefix [
    ^ #'FamixC'
]

{ #category : 'accessing' }
FamixCGenerator class >> submetamodels [
    ^ { FamixCPreprocGenerator  }
]

{ #category : 'definition' }
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

	"STRCTURAL ENTITIES"
	attribute := builder newClassNamed: #Attribute.
	localVar := builder newClassNamed: #LocalVariable.
	unknownVar := builder newClassNamed: #UnknownVariable.
	parameter := builder newClassNamed: #Parameter.
	enumValue := builder newClassNamed: #EnumValue.

	containerEntity := builder newClassNamed: #ContainerEntity.
	unknownContainerEntity := builder newClassNamed: #UnknownContainerEntity.

	"TYPES"
	type := builder newClassNamed: #Type.
	primitiveType := builder newClassNamed: #PrimitiveType.
	structuredType := builder newClassNamed: #StructuredType.
	struct := builder newClassNamed: #Struct.
	enum := builder newClassNamed: #Enum.
	union := builder newClassNamed: #Union.
	aliasType := builder newClassNamed: #AliasType.
	entityTyping := builder newClassNamed: #EntityTyping.

	"ContainerEntity: BehaviouralEntity"
	behaviouralEntity := builder newClassNamed: #BehaviouralEntity.
	function := builder newClassNamed: #Function.
	unknownBehaviour := builder newClassNamed: #UnknownBehaviouralEntity.

	cEntity := self remoteEntity: #Entity withPrefix: #FamixCPreproc.
	cPreprocCompilationUnit := self remoteEntity: #CompilationUnit withPrefix: #FamixCPreproc
]

{ #category : 'definition' }
FamixCGenerator >> defineHierarchy [
   super defineHierarchy.

   "Anchors"
	sourceAnchor --|> cEntity.
	sourceAnchor --|> #TSourceAnchor.
	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.
	sourceTextAnchor --|> sourceAnchor.
	sourceTextAnchor --|> #THasImmediateSource.
	multipleFileAnchor --|> sourceAnchor.
	multipleFileAnchor --|> #TMultipleFileAnchor.
	relativeSourceAnchor --|> cEntity.
	relativeSourceAnchor --|> #TRelativeSourceAnchor.
	sourceLanguage --|> cEntity.
	sourceLanguage --|> #TSourceLanguage.

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
	behaviouralEntity --|> #TWithComments.
   behaviouralEntity --|> #THasSignature.
   behaviouralEntity --|> #TTypedEntity.

   behaviouralPointer --|> association.

   comment --|> sourcedEntity.
   comment --|> #TComment.

	containerEntity --|> namedEntity.
	containerEntity --|> #TWithTypes.
	containerEntity --|> #TWithFunctions.
	containerEntity --|> #TWithLocalVariables.
	
   derefInvocation --|> invocation.
   derefInvocation --|> #TDereferencedInvocation.

	enum --|> type.
	enum --|> #TEnum.
	
	enumValue --|> namedEntity.
	enumValue --|> #TEnumValue.
	enumValue --|> #TAccessible.
	enumValue --|> #TSourceEntity.
	
	entityTyping --|> cEntity.
	entityTyping --|> #TEntityTyping.

	function --|> behaviouralEntity.
	function --|> #TFunction.

   invocation --|> association.
	invocation --|> #THasSignature.
	
	localVar --|> namedEntity.
	localVar --|> #TLocalVariable.
	
	namedEntity --|> sourcedEntity.
	namedEntity --|> #TEntityMetaLevelDependency.

	parameter --|> namedEntity.
	parameter --|> #TParameter.
	
	primitiveType --|> type.
	primitiveType --|> #TPrimitiveType.
	
   reference --|> association.
   reference --|> #TReference.

	sourcedEntity --|> cEntity.

	structuredType --|> type.
	structuredType --|> #TWithAttributes.
	structuredType --|> #TWithComments.

	struct --|> structuredType.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.
	
   union --|> structuredType.

	unknownBehaviour --|> behaviouralEntity.

	unknownContainerEntity --|> containerEntity.
	
	unknownVar --|> namedEntity.
	unknownVar --|> #TUnknownVariable.
	
	
 
]

{ #category : 'definition' }
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

{ #category : 'definition' }
FamixCGenerator >> defineRelations [

	super defineRelations.

	((type property: #typeContainer)
		 comment: 'Container entity to which this type belongs. Container is a namespace, not a package (Smalltalk).';
		 container) *- ((cPreprocCompilationUnit property: #types) comment: 'Types contained (declared) in this entity, if any.
#types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.')
]

{ #category : 'definition' }
FamixCGenerator >> newBuilder [

	^ super newBuilder
		  withFileImport;
		  yourself
]
