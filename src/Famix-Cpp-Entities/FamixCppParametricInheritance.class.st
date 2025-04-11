"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concretizations` | `FamixTParametricAssociation` | `triggeringAssociation` | `FamixTConcretization` | The parameter concretizations associated with this association.|



"
Class {
	#name : 'FamixCppParametricInheritance',
	#superclass : 'FamixCppInheritance',
	#traits : 'FamixTParametricAssociation',
	#classTraits : 'FamixTParametricAssociation classTrait',
	#category : 'Famix-Cpp-Entities-Entities',
	#package : 'Famix-Cpp-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCppParametricInheritance class >> annotation [

	<FMClass: #ParametricInheritance super: #FamixCppInheritance>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]
