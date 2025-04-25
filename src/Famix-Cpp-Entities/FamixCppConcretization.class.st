"
## Relations
======================

### Association source
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeArgument` | `FamixTConcretization` | `outgoingConcretizations` | `FamixTTypeArgument` | The type argument that concretizes the type parameter|

### Association target
| Relation | Origin | Opposite | Type | Comment |
|---|
| `typeParameter` | `FamixTConcretization` | `concretizations` | `FamixTTypeParameter` | Type parameter linked to in this relationship.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `next` | `FamixTAssociation` | `previous` | `FamixTAssociation` | Next association in an ordered collection of associations. Currently not supported by the Moose importer|
| `previous` | `FamixTAssociation` | `next` | `FamixTAssociation` | Previous association in an ordered collection of associations. Currently not supported by the Moose importer|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|
| `triggeringAssociation` | `FamixTConcretization` | `concretizations` | `FamixTParametricAssociation` | The association that triggers this concretization.|



"
Class {
	#name : 'FamixCppConcretization',
	#superclass : 'FamixCppEntity',
	#traits : 'FamixTConcretization',
	#classTraits : 'FamixTConcretization classTrait',
	#category : 'Famix-Cpp-Entities-Entities',
	#package : 'Famix-Cpp-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCppConcretization class >> annotation [

	<FMClass: #Concretization super: #FamixCppEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]
