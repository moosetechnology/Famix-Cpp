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
	
	type := self remoteEntity: #Type withPrefix: #C.
	class := builder newClassNamed: #Class.

	method := builder newClassNamed: #Method.

	namespace := builder newClassNamed: #Namespace.

	implicitVar := builder newClassNamed: #ImplicitVar.

	inheritance := builder newClassNamed: #Inheritance.

]

{ #category : #definition }
FamixCppNewGenerator >> defineHierarchy [
    super defineHierarchy.
    
	class --|> type.
   class --|> #TClass.

   method --|> #TMethod.

   implicitVar --|> #TImplicitVariable.

   inheritance --|> #TInheritance.

	namespace --|> #TNamespace.
]
