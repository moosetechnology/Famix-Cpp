Class {
	#name : #FamixCppNewGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'typeX',
		'classX',
		'behaviouralEntity',
		'methodX',
		'namespaceX',
		'structuralEntity',
		'implicitVar',
		'associationX',
		'inheritanceX',
		'invocationX',
		'ooinvocationX',
		'type',
		'class',
		'method',
		'namespace',
		'association',
		'inheritance',
		'invocation',
		'ooinvocation'
	],
	#category : #'Famix-CppNew-Generator'
}

{ #category : #accessing }
FamixCppNewGenerator class >> packageName [
    ^ #'CppNew-Entities'
]

{ #category : #accessing }
FamixCppNewGenerator class >> prefix [
    ^ #'CppNew'
]

{ #category : #accessing }
FamixCppNewGenerator class >> submetamodels [
    ^ { FamixCGenerator }
]

{ #category : #definition }
FamixCppNewGenerator >> defineClasses [
	super defineClasses.
	
	type := self remoteEntity: #Type withPrefix: #C.
	class := builder newClassNamed: #Class.

	behaviouralEntity := self remoteEntity: #BehaviouralEntity withPrefix: #C.
	method := builder newClassNamed: #Method.

	namespace := builder newClassNamed: #Namespace.
	
	structuralEntity := self remoteEntity: #StructuralEntity withPrefix: #C. 
	implicitVar := builder newClassNamed: #ImplicitVar.

	association := self remoteEntity: #Association withPrefix: #C. 
	inheritance := builder newClassNamed: #Inheritance.
	invocation := self remoteEntity: #Invocation withPrefix: #C. 
	ooinvocation := builder newClassNamed: #Ooinvocation.

]

{ #category : #definition }
FamixCppNewGenerator >> defineHierarchy [
    super defineHierarchy.
    
    class --|> type.

    method --|> behaviouralEntity.

    implicitVar --|> structuralEntity.

    inheritance --|> association.
    invocation --|> association.

    ooinvocation --|> invocation.


]
