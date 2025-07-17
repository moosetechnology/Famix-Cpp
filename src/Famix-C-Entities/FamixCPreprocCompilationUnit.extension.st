Extension { #name : 'FamixCPreprocCompilationUnit' }

{ #category : '*Famix-C-Entities-accessing' }
FamixCPreprocCompilationUnit >> types [
	"Relation named: #types type: #FamixCType opposite: #typeContainer"

	<generated>
	<FMComment: 'Types contained (declared) in this entity, if any.
#types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.'>
	<derived>
	<FMProperty: #types type: #FamixCType opposite: #typeContainer>
	<package: #'Famix-C-Entities'>
	^ self attributeAt: #types ifAbsentPut: [ FMMultivalueLink on: self opposite: #typeContainer: ]
]

{ #category : '*Famix-C-Entities-accessing' }
FamixCPreprocCompilationUnit >> types: anObject [

	<generated>
	self types value: anObject
]
