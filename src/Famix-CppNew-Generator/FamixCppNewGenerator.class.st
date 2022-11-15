Class {
	#name : #FamixCppNewGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'type',
		'class',
		'method',
		'namespace',
		'inheritance',
		'containerEntity',
		'implicitVariable'
	],
	#category : #'Famix-CppNew-Generator'
}

{ #category : #accessing }
FamixCppNewGenerator class >> packageName [
    ^ #'Famix-CppNew-Entities'
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

	class := builder newClassNamed: #Class.

	containerEntity := self remoteEntity: #ContainerEntity withPrefix: #C.

	implicitVariable := builder newClassNamed: #ImplicitVariable.
	inheritance := builder newClassNamed: #Inheritance.
	method := builder newClassNamed: #Method.
	namespace := builder newClassNamed: #Namespace.

	type := self remoteEntity: #Type withPrefix: #C.

]

{ #category : #definition }
FamixCppNewGenerator >> defineHierarchy [
    super defineHierarchy.
    
	class --|> type.
   class --|> #TClass.

   implicitVariable --|> #TImplicitVariable.

   inheritance --|> #TInheritance.

   method --|> containerEntity.
   method --|> #TMethod.

   namespace --|> containerEntity.
	namespace --|> #TNamespace.
]
