"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parameterTypes` | `FamixCppParameterizableClass` | `parentParameterizableClass` | `FamixCppParameterType` | |

### Outgoing dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concretizations` | `FamixTParametricEntity` | `genericEntity` | `FamixTConcretization` | Concretization relationships, i.e. the associations of known concrete entities of this type.|

### Incoming dependencies
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericization` | `FamixTParametricEntity` | `concreteEntity` | `FamixTConcretization` | Generic entity relationship, i.e. the association to the generic entity of this type.|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `concreteParameters` | `FamixTParametricEntity` | `concreteEntities` | `FamixTConcreteParameterType` | List of concrete parameters.|
| `genericParameters` | `FamixTParametricEntity` | `genericEntities` | `FamixTGenericParameterType` | List of generic parameters.|



"
Class {
	#name : 'FamixCppParameterizableClass',
	#superclass : 'FamixCppClass',
	#traits : 'FamixTParametricEntity',
	#classTraits : 'FamixTParametricEntity classTrait',
	#instVars : [
		'#parameterTypes => FMMany type: #FamixCppParameterType opposite: #parentParameterizableClass'
	],
	#category : 'Famix-Cpp-Entities-Entities',
	#package : 'Famix-Cpp-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCppParameterizableClass class >> annotation [

	<FMClass: #ParameterizableClass super: #FamixCppClass>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]

{ #category : 'adding' }
FamixCppParameterizableClass >> addParameterType: anObject [
	<generated>
	^ self parameterTypes add: anObject
]

{ #category : 'accessing' }
FamixCppParameterizableClass >> parameterTypes [
	"Relation named: #parameterTypes type: #FamixCppParameterType opposite: #parentParameterizableClass"

	<generated>
	<derived>
	^ parameterTypes
]

{ #category : 'accessing' }
FamixCppParameterizableClass >> parameterTypes: anObject [

	<generated>
	parameterTypes value: anObject
]

{ #category : 'navigation' }
FamixCppParameterizableClass >> parameterTypesGroup [
	<generated>
	<navigation: 'ParameterTypes'>
	^ MooseSpecializedGroup withAll: self parameterTypes asSet
]
