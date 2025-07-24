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
		'include',
		'indexedFileAnchor',
		'invocation',
		'localVar',
		'multipleFileAnchor',
		'parameter',
		'preprocDefine',
		'preprocIfDef',
		'primitiveType',
		'reference',
		'relativeSourceAnchor',
		'struct',
		'type',
		'union',
		'behaviouralPointer',
		'namespace',
		'structuredType',
		'entityTyping',
		'globalVar',
		'preprocFile'
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
    ^ { FamixPreprocGenerator  }
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

	"Preproc"
	preprocFile := builder newClassNamed: #PreprocessingFile.
	compilationUnit := builder newClassNamed: #CompilationUnit.
	headerFile := builder newClassNamed: #HeaderFile.
	include := builder newClassNamed: #Include.
	preprocDefine := builder newClassNamed: #PreprocessorDefine.
	preprocIfDef := builder newClassNamed: #PreprocessorIfdef.

	"STRCTURAL ENTITIES"
	attribute := builder newClassNamed: #Attribute.
	localVar := builder newClassNamed: #LocalVariable.
	globalVar := builder newClassNamed: #GlobalVariable.
	parameter := builder newClassNamed: #Parameter.
	enumValue := builder newClassNamed: #EnumValue.

	containerEntity := builder newClassNamed: #ContainerEntity.

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
	function := builder newClassNamed: #Function
]

{ #category : 'definition' }
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

	"Preproc"
	preprocFile --|> #TWithTypes.
	preprocFile --|> #TWithFunctions.
	preprocFile --|> #TWithGlobalVariables.


	compilationUnit --|> preprocFile.
	compilationUnit --|> #TCompilationUnit.

	headerFile --|> preprocFile.
	headerFile --|> #THeaderFile.

	include --|> #TInclude.

	preprocDefine --|> #TPreprocessorDefine.

	preprocIfDef --|> #TPreprocessorIfdef.

	"entities"

	access --|> association.
	access --|> #TAccess.

	aliasType --|> type.
	aliasType --|> #TTypeAlias.

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

	entityTyping --|> #TEntityTyping.

	function --|> behaviouralEntity.
	function --|> #TFunction.

	globalVar --|> namedEntity.
	globalVar --|> #TGlobalVariable.

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


	structuredType --|> type.
	structuredType --|> #TWithAttributes.
	structuredType --|> #TWithComments.

	struct --|> structuredType.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.

	union --|> structuredType
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
FamixCGenerator >> newBuilder [

	^ super newBuilder
		  withFileImport;
		  yourself
]
