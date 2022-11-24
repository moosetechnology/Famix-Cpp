"
TODO
"
Class {
	#name : #FamixCppGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'inheritance',
		'method',
		'namespace',
		'class',
		'implicitVar',
		'ooInvocation',
		'type',
		'behaviouralEntity',
		'containerEntity',
		'association',
		'invocation'
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
	^ { FamixCGenerator }
]

{ #category : #definition }
FamixCppGenerator >> defineClasses [
	super defineClasses.
	
	type := self remoteEntity: #Type withPrefix: #FamixC. 
	class := builder newClassNamed: #Class.
	
	behaviouralEntity := self remoteEntity: #BehaviouralEntity withPrefix: #FamixC. 
	method := builder newClassNamed: #Method.
	
	containerEntity := self remoteEntity: #ContainerEntity withPrefix: #FamixC. 
	namespace := builder newClassNamed: #Namespace.
	
	namedEntity := self remoteEntity: #NamedEntity withPrefix: #FamixC. 
	implicitVar := builder newClassNamed: #ImplicitVar.
	
	association := self remoteEntity: #Association withPrefix: #FamixC. 
	inheritance := builder newClassNamed: #Inheritance.
	
	invocation := self remoteEntity: #Invocation withPrefix: #FamixC. 
	ooInvocation := builder newClassNamed: #OOInvocation.
]

{ #category : #definition }
FamixCppGenerator >> defineHierarchy [
	super defineHierarchy.

	class --|> type.
	class --|> #TClass.
	
	method --|> behaviouralEntity.
	method --|> #TMethod.
	
	namespace --|> containerEntity.
	method --|> #TNamespace.
	
	implicitVar --|> namedEntity.
	implicitVar --|> #TImplicitVariable.
	
	inheritance --|> association.
	inheritance --|> #TInheritance.
	
	ooInvocation --|> invocation.
	ooInvocation --|> #TInvocation.
]
