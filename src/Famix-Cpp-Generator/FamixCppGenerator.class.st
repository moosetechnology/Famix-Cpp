"
TODO
"
Class {
	#name : 'FamixCppGenerator',
	#superclass : 'FamixMetamodelGenerator',
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
		'namespace',
		'structuredType',
		'namedEntity',
		'entity',
		'sourceAnchor',
		'sourceLanguage',
		'sourceTextAnchor',
		'concretization',
		'parameterConcretization',
		'typeParameter',
		'parametricClass',
		'parametricType',
		'parametricInheritance'
	],
	#category : 'Famix-Cpp-Generator',
	#package : 'Famix-Cpp-Generator'
}

{ #category : 'accessing' }
FamixCppGenerator class >> packageName [

	<ignoreForCoverage>
	^ 'Famix-Cpp-Entities'
]

{ #category : 'accessing' }
FamixCppGenerator class >> prefix [
	^ #'FamixCpp'
]

{ #category : 'accessing' }
FamixCppGenerator class >> submetamodels [
	^ { FamixCGenerator }
]

{ #category : 'definition' }
FamixCppGenerator >> defineClasses [
	super defineClasses.
	
	"classes from FamixBasicInfrastructureGenerator that we want to reuse from C-Meta-Model"
	entity := self remoteEntity: #Entity withPrefix: #FamixC.
	sourceAnchor := self remoteEntity: #SourceAnchor withPrefix: #FamixC.
	namedEntity  := self remoteEntity: #SourceLanguage withPrefix: #FamixC.
	sourceTextAnchor := self remoteEntity: #SourceTextAnchor withPrefix: #FamixC.

	association := self remoteEntity: #Association withPrefix: #FamixC. 
	behaviouralEntity := self remoteEntity: #BehaviouralEntity withPrefix: #FamixC. 
	class := builder newClassNamed: #Class.
	containerEntity := self remoteEntity: #ContainerEntity withPrefix: #FamixC. 
	implicitVar := builder newClassNamed: #ImplicitVariable.
	inheritance := builder newClassNamed: #Inheritance.
	invocation := self remoteEntity: #Invocation withPrefix: #FamixC. 
	method := builder newClassNamed: #Method.
	namespace := builder newClassNamed: #Namespace.
	namedEntity := self remoteEntity: #NamedEntity withPrefix: #FamixC. 
	ooInvocation := builder newClassNamed: #OOInvocation.
	parametricClass := builder newClassNamed: #ParametricClass.
	typeParameter := builder newClassNamed: #TypeParameter.
	sourceLanguage := builder newClassNamed: #SourceLanguage.
	structuredType := self remoteEntity: #StructuredType withPrefix: #FamixC. 
	type := self remoteEntity: #Type withPrefix: #FamixC.
	
	parametricInheritance := builder newClassNamed: #ParametricInheritance.
	concretization := builder newClassNamed: #Concretization.
]

{ #category : 'definition' }
FamixCppGenerator >> defineHierarchy [
	super defineHierarchy.

	class --|> structuredType.
	class --|> #TClass.
	class --|> #TWithTypes.

	implicitVar --|> namedEntity.
	implicitVar --|> #TImplicitVariable.
	
	inheritance --|> association.
	inheritance --|> #TInheritance.
	
	method --|> behaviouralEntity.
	method --|> #TMethod.
	method --|> #THasKind.

	namespace --|> containerEntity.

	ooInvocation --|> invocation.
	ooInvocation --|> #TInvocation.

	parametricClass --|> class.
	parametricClass --|> #TParametricEntity.
	
	typeParameter --|> type.
	typeParameter --|> #TTypeParameter. 
	
	self flag: #todo. "The next line does nothing on a remote entity."
	"type --|> #TTypeArgument."

	concretization --|> #TConcretization.
	
	parametricInheritance --|> inheritance.
	parametricInheritance --|> #TParametricAssociation.

	sourceLanguage --|> entity.
	sourceLanguage --|> #TSourceLanguage.

]

{ #category : 'definition' }
FamixCppGenerator >> defineRelations [

	super defineRelations.

	(namespace property: #childrenNamespaces)
	<>-* (namespace property: #parentNamespace)
]

{ #category : 'definition' }
FamixCppGenerator >> newBuilder [

	^ super newBuilder
		  withFileImport;
		  yourself
]
