Class {
	#name : #FamixCGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'typeX',
		'primitiveType',
		'structX',
		'enumX',
		'unionX',
		'behaviouralEntity',
		'functionX',
		'unknownBehaviour',
		'structuralEntity',
		'attributeX',
		'localVar',
		'globalVar',
		'paramX',
		'associationX',
		'referenceX',
		'accessX',
		'invocationX',
		'derefInvocation',
		'behaviouralReference',
		'type',
		'struct',
		'enum',
		'union',
		'function',
		'attribute',
		'param',
		'association',
		'reference',
		'access',
		'invocation'
	],
	#category : #'Famix-C-Generator'
}

{ #category : #accessing }
FamixCGenerator class >> packageName [
    ^ #'C-Entities'
]

{ #category : #accessing }
FamixCGenerator class >> prefix [
    ^ #'C'
]

{ #category : #definition }
FamixCGenerator >> defineClasses [
	super defineClasses.
	
	type := builder newClassNamed: #Type.
	primitiveType := builder newClassNamed: #PrimitiveType.
	struct := builder newClassNamed: #Struct.
	enum := builder newClassNamed: #Enum.
	union := builder newClassNamed: #Union.
	
	behaviouralEntity := builder newClassNamed: #BehaviouralEntity.
	function := builder newClassNamed: #Function.
	unknownBehaviour := builder newClassNamed: #UnknownBehaviour.

	structuralEntity := builder newClassNamed: #StructuralEntity.
	attribute := builder newClassNamed: #Attribute.
	localVar := builder newClassNamed: #LocalVar.
	globalVar := builder newClassNamed: #GlobalVar.
	param := builder newClassNamed: #Param.
	
	association := builder newClassNamed: #Association.
	reference := builder newClassNamed: #Reference.
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	derefInvocation := builder newClassNamed: #DerefInvocation.
	behaviouralReference := builder newClassNamed: #BehaviouralReference.
]

{ #category : #definition }
FamixCGenerator >> defineHierarchy [
    super defineHierarchy.
    
    primitiveType --|> type.
    struct --|> type.
    enum --|> type.
    union --|> type.

    function --|> behaviouralEntity.
    unknownBehaviour --|> behaviouralEntity.

    attribute --|> structuralEntity.
    localVar --|> structuralEntity.
    globalVar --|> structuralEntity.
    param --|> structuralEntity.

    reference --|> association.
    access --|> association.
    invocation --|> association.
    behaviouralReference --|> association.

    derefInvocation --|> invocation.

]

{ #category : #definition }
FamixCGenerator >> defineProperties [
    super defineProperties.
    type property: #name type: #String.
    behaviouralEntity property: #name type: #String.
    structuralEntity property: #name type: #String.
    association property: #name type: #String

]
