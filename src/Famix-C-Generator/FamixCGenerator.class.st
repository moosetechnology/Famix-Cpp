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
		'enumValue'
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
	
	type := builder newClassNamed: #Type.
	primitiveType := builder newClassNamed: #PrimitiveType.
	struct := builder newClassNamed: #Struct.
	enum := builder newClassNamed: #Enum.
	union := builder newClassNamed: #Union.
	aliasType := builder newClassNamed: #AliasType.

	behaviouralReference := builder newClassNamed: #BehaviouralReference.

	function := builder newClassNamed: #Function.
	unknownBehaviour := builder newClassNamed: #UnknownBehaviour.

	attribute := builder newClassNamed: #Attribute.
	localVar := builder newClassNamed: #LocalVar.
	globalVar := builder newClassNamed: #GlobalVar.
	parameter := builder newClassNamed: #Parameter.
	enumValue := builder newClassNamed: #EnumValue.

	reference := builder newClassNamed: #Reference.
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	derefInvocation := builder newClassNamed: #DerefInvocation.

]

{ #category : #definition }
FamixCGenerator >> defineHierarchy [
   super defineHierarchy.
   
   access --|> #TAccess.

	aliasType --|> type.
	aliasType --|> 	#TTypeAlias.
	
   attribute --|> #TAttribute.
 
   "behaviouralReference --|> association."

   derefInvocation --|> invocation.

 	enum --|> type.
	enum --|> #TEnum.

	enumValue --|> #TNamedEntity.
	enumValue --|> #TStructuralEntity.
	enumValue --|> #TWithComments.
	enumValue --|> #TEnumValue.

   function --|> #TFunction.

   globalVar --|> #TGlobalVariable.

   invocation --|> #TInvocation.

	localVar --|> #TLocalVariable.

   parameter --|> #TStructuralEntity.

   primitiveType --|> type.

   reference --|> #TReference.

   struct --|> type.
	struct --|> #TWithAttributes.
	struct --|> #TWithComments.

	type --|> #TType.
	type --|> #TWithTypeAliases.

   union --|> type.
	union --|> #TWithAttributes.
	union --|> #TWithComments.

   unknownBehaviour --|> #TNamedEntity.

]
