"
TODO
"
Class {
	#name : #FamixCppGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'inheritance',
		'method',
		'class',
		'implicitVar',
		'ooInvocation',
		'type',
		'behaviouralEntity',
		'containerEntity',
		'association',
		'invocation',
		'parameterizableClass',
		'parameterizedType',
		'parameterType'
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
	
	association := self remoteEntity: #Association withPrefix: #FamixC. 
	behaviouralEntity := self remoteEntity: #BehaviouralEntity withPrefix: #FamixC. 
	class := builder newClassNamed: #Class.
	containerEntity := self remoteEntity: #ContainerEntity withPrefix: #FamixC. 
	implicitVar := builder newClassNamed: #ImplicitVariable.
	inheritance := builder newClassNamed: #Inheritance.
	invocation := self remoteEntity: #Invocation withPrefix: #FamixC. 
	method := builder newClassNamed: #Method.
	namedEntity := self remoteEntity: #NamedEntity withPrefix: #FamixC. 
	ooInvocation := builder newClassNamed: #OOInvocation.
	parameterizableClass := builder newClassNamed: #ParameterizableClass.
	parameterizedType := builder newClassNamed: #ParameterizedType.
	parameterType := builder newClassNamed: #ParameterType.
	type := self remoteEntity: #Type withPrefix: #FamixC. 

]

{ #category : #definition }
FamixCppGenerator >> defineHierarchy [
	super defineHierarchy.

	class --|> type.
	class --|> #TClass.
	class --|> #TWithTypes.

	implicitVar --|> namedEntity.
	implicitVar --|> #TImplicitVariable.
	
	inheritance --|> association.
	inheritance --|> #TInheritance.
	
	method --|> behaviouralEntity.
	method --|> #TMethod.
	method --|> #THasKind.

	ooInvocation --|> invocation.
	ooInvocation --|> #TInvocation.

	parameterizableClass --|> class.
	parameterizableClass --|> #TWithParameterizedTypes.
	parameterizedType --|> type.
	parameterizedType --|> #TParameterizedType.
	parameterType --|> type.
	parameterType --|> #TParameterType.

]

{ #category : #definition }
FamixCppGenerator >> defineRelations [ 
	super defineRelations.

	parameterizableClass <>-* parameterType
]
