Class {
	#name : #FamixCGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'primitiveType',
		'unknownBehaviour',
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
		'containerEntity',
		'globalVariable',
		'localVariable',
		'dereferencedInvocation'
	],
	#category : #'Famix-C-Generator'
}

{ #category : #accessing }
FamixCGenerator class >> packageName [
    ^ #'Famix-C-Entities'
]

{ #category : #accessing }
FamixCGenerator class >> prefix [
    ^ #'C'
]

{ #category : #accessing }
FamixCGenerator class >> submetamodels [
    ^ { FamixCPreprocGenerator }
]

{ #category : #definition }
FamixCGenerator >> defineClasses [
	super defineClasses.

	access := builder newClassNamed: #Access.
	aliasType := builder newClassNamed: #AliasType.
	attribute := builder newClassNamed: #Attribute.
	behaviouralReference := builder newClassNamed: #BehaviouralReference.
	containerEntity := builder newClassNamed: #ContainerEntity.
	dereferencedInvocation := builder newClassNamed: #DereferencedInvocation.
	enum := builder newClassNamed: #Enum.
	enumValue := builder newClassNamed: #EnumValue.
	function := builder newClassNamed: #Function.
	globalVariable := builder newClassNamed: #GlobalVariable.
	invocation := builder newClassNamed: #Invocation.
	localVariable := builder newClassNamed: #LocalVariable.
	parameter := builder newClassNamed: #Parameter.
	primitiveType := builder newClassNamed: #PrimitiveType.
	reference := builder newClassNamed: #Reference.
	struct := builder newClassNamed: #Struct.
	type := builder newClassNamed: #Type.
	union := builder newClassNamed: #Union.
	unknownBehaviour := builder newClassNamed: #UnknownBehaviour.

]

{ #category : #definition }
FamixCGenerator >> defineHierarchy [
   super defineHierarchy.
   
   access --|> #TAccess.

	aliasType --|> type.
	aliasType --|> 	#TTypeAlias.
	
   attribute --|> #TAttribute.
 
   "behaviouralReference --|> association."

   dereferencedInvocation --|> invocation.

 	enum --|> type.
	enum --|> #TEnum.

	enumValue --|> #TNamedEntity.
	enumValue --|> #TStructuralEntity.
	enumValue --|> #TWithComments.
	enumValue --|> #TEnumValue.

	function --|> containerEntity.
   function --|> #TFunction.

   globalVariable --|> #TGlobalVariable.

   invocation --|> #TInvocation.

	localVariable --|> #TLocalVariable.

   parameter --|> #TParameter.

   primitiveType --|> type.

   reference --|> #TReference.

   struct --|> type.
	struct --|> #TWithAttributes.
	struct --|> #TWithComments.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.

   union --|> type.
	union --|> #TWithAttributes.
	union --|> #TWithComments.

   unknownBehaviour --|> #TNamedEntity.

]
