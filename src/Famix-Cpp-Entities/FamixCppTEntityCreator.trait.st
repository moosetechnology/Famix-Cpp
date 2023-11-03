"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.
"
Trait {
	#name : #FamixCppTEntityCreator,
	#category : #'Famix-Cpp-Entities-Model'
}

{ #category : #meta }
FamixCppTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newClass [

	<generated>
	^ self add: FamixCppClass new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newClassNamed: aName [

	<generated>
	^ self add: (FamixCppClass named: aName)
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newImplicitVariable [

	<generated>
	^ self add: FamixCppImplicitVariable new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newImplicitVariableNamed: aName [

	<generated>
	^ self add: (FamixCppImplicitVariable named: aName)
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newInheritance [

	<generated>
	^ self add: FamixCppInheritance new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newMethod [

	<generated>
	^ self add: FamixCppMethod new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newMethodNamed: aName [

	<generated>
	^ self add: (FamixCppMethod named: aName)
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newNamespace [

	<generated>
	^ self add: FamixCppNamespace new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newOOInvocation [

	<generated>
	^ self add: FamixCppOOInvocation new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newParameterType [

	<generated>
	^ self add: FamixCppParameterType new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newParameterizableClass [

	<generated>
	^ self add: FamixCppParameterizableClass new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newParameterizedType [

	<generated>
	^ self add: FamixCppParameterizedType new
]

{ #category : #'entity creation' }
FamixCppTEntityCreator >> newSourceLanguage [

	<generated>
	^ self add: FamixCppSourceLanguage new
]
