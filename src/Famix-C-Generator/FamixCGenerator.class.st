Class {
	#name : #FamixCGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'primitiveType',
		'unknownBehaviour',
		'localVar',
		'globalVar',
		'derefInvocation',
		'behaviouralReference',
		'type',
		'struct',
		'enum',
		'union',
		'function',
		'attribute',
		'reference',
		'access',
		'invocation',
		'aliasType',
		'parameter',
		'enumValue',
		'sourceAnchor',
		'fileAnchor',
		'sourceTextAnchor',
		'multipleFileanchor',
		'relativeSourceAnchor',
		'sourceLanguage',
		'unknownSourceLanguage',
		'sourcedEntity',
		'comment',
		'namedEntity',
		'containerEntity',
		'association',
		'multipleFileAnchor',
		'behaviouralEntity'
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
	sourceAnchor := builder newClassNamed: #SourceAnchor.
	fileAnchor := builder newClassNamed: #FileAnchor.
	sourceTextAnchor := builder newClassNamed: #SourceTextAnchor.
	multipleFileAnchor := builder newClassNamed: #MultipleFileanchor.
	relativeSourceAnchor := builder newClassNamed: #RelativeSourceAnchor.
	sourceLanguage := builder newClassNamed: #SourceLanguage.
	unknownSourceLanguage := builder newClassNamed: #UnknownSourceLanguage.
	
	"SourcedEntity"
	sourcedEntity := builder newClassNamed: #SourcedEntity.
	
	"SourcedEntity: Association"
	association := builder newClassNamed: #Association.
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	reference := builder newClassNamed: #Reference.
	behaviouralReference := builder newClassNamed: #BehaviouralReference.
	derefInvocation := builder newClassNamed: #DerefInvocation.

	"SourcedEntity: Comment"
	comment := builder newClassNamed: #Comment.
	
	"SourcedEntity: NamedEntity"
	namedEntity := builder newClassNamed: #NamedEntity.
	
   "NamedEntity"
	attribute := builder newClassNamed: #Attribute.
	globalVar := builder newClassNamed: #GlobalVar.
	localVar := builder newClassNamed: #LocalVar.
	parameter := builder newClassNamed: #Parameter.
	enumValue := builder newClassNamed: #EnumValue.
	
	"NamedEntity: ContainerEntity"
	containerEntity := builder newClassNamed: #ContainerEntity.
	
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
	unknownBehaviour := builder newClassNamed: #UnknownBehaviour.




]

{ #category : #definition }
FamixCGenerator >> defineHierarchy [
   super defineHierarchy.

   "Anchors"
	sourceAnchor --|> #TSourceAnchor.
	fileAnchor --|> sourceAnchor.
	fileAnchor --|> #TFileNavigation.
	sourceTextAnchor --|> sourceAnchor.
	sourceTextAnchor --|> #THasImmediateSource.
	multipleFileAnchor --|> sourceAnchor.
	multipleFileAnchor --|> #TMultipleFileAnchor.
	relativeSourceAnchor --|> #TRelativeSourceAnchor.
	sourceLanguage --|> #TSourceLanguage.
	unknownSourceLanguage --|> sourceLanguage.
	unknownSourceLanguage --|> #TUnknownSourceLanguage.
	
	"SourcedEntity"
	sourcedEntity --|> #TSourceEntity.
	
	"SourcedEntity: Association"
	association --|> sourcedEntity.
	association --|> #TAssociation.
	access --|> association.
   access --|> #TAccess.
   invocation --|> association.
   invocation --|> #TInvocation.
   reference --|> association.
   reference --|> #TReference.
   behaviouralReference --|> association.
   derefInvocation --|> invocation.

   "SourcedEntity: Comment"
   comment --|> sourcedEntity.
   comment --|> #TComment.

   "SourcedEntity: NamedEntity"
	namedEntity --|> sourcedEntity.
	namedEntity --|> #TNamedEntity.
	namedEntity --|> #TEntityMetaLevelDependency.
	namedEntity --|> #THasModifiers.
	
	"NamedEntity"
	attribute --|> namedEntity.
	attribute --|> #TAttribute.
	attribute --|> #TInvocationsReceiver.
	
	globalVar --|> namedEntity.
	globalVar --|> #TGlobalVariable.
	
	localVar --|> namedEntity.
	localVar --|> #TLocalVariable.
	
	parameter --|> namedEntity.
	parameter --|> #TParameter.
	
	enumValue --|> namedEntity.
	enumValue --|> #TEnumValue.

	"NamedEntity: ContainerEntity"
	containerEntity --|> namedEntity.
	
	"ContainerEntity: Type"
	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.
	
	enum --|> type.
	enum --|> #TEnum.
	
	primitiveType --|> type.
	primitiveType --|> #TPrimitiveType.
	
	struct --|> type.
	struct --|> #TWithAttributes.
	struct --|> #TWithComments.

   union --|> type.
	union --|> #TWithAttributes.
	union --|> #TWithComments.

	aliasType --|> type.
	aliasType --|> 	#TTypeAlias.
	
 	"ContainerEntity: BehaviouralEntity"
	behaviouralEntity --|> containerEntity.
	behaviouralEntity --|> #TInvocable.
	behaviouralEntity --|> #TWithStatements.
	behaviouralEntity --|> #TWithAccesses.
	behaviouralEntity --|> #TWithInvocations.
	
	"BehaviouralEntity"
	function --|> behaviouralEntity.
	function --|> #TFunction.
	unknownBehaviour --|> behaviouralEntity.
   
]
