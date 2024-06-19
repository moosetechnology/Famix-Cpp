"
This class is used to choose the entities to be imported when loading a model from file.
It is used by `MiImportingContextPresenter` in a `MiImportModelFromFileDialog` to import a FamixCppModel.
"
Class {
	#name : #FamixCppImportingContext,
	#superclass : #FamixImportingContext,
	#category : #'Famix-Cpp-Entities-Import'
}

{ #category : #accessing }
FamixCppImportingContext class >> importedMetamodel [

	<generated>
	^ FamixCppModel metamodel
]

{ #category : #importing }
FamixCppImportingContext >> importClass [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Class)
]

{ #category : #importing }
FamixCppImportingContext >> importConcretization [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Concretization)
]

{ #category : #importing }
FamixCppImportingContext >> importImplicitVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ImplicitVariable)
]

{ #category : #importing }
FamixCppImportingContext >> importInheritance [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Inheritance)
]

{ #category : #importing }
FamixCppImportingContext >> importMethod [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Method)
]

{ #category : #importing }
FamixCppImportingContext >> importNamespace [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Namespace)
]

{ #category : #importing }
FamixCppImportingContext >> importOOInvocation [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #OOInvocation)
]

{ #category : #importing }
FamixCppImportingContext >> importParameterConcretization [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #ParameterConcretization)
]

{ #category : #importing }
FamixCppImportingContext >> importParameterType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParameterType)
]

{ #category : #importing }
FamixCppImportingContext >> importParameterizableClass [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParameterizableClass)
]

{ #category : #importing }
FamixCppImportingContext >> importParameterizedType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ParameterizedType)
]

{ #category : #importing }
FamixCppImportingContext >> importSourceLanguage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceLanguage)
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportClass [

	<generated>
	^ self shouldImport: #Class
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportConcretization [

	<generated>
	^ self shouldImport: #Concretization
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportImplicitVariable [

	<generated>
	^ self shouldImport: #ImplicitVariable
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportInheritance [

	<generated>
	^ self shouldImport: #Inheritance
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportMethod [

	<generated>
	^ self shouldImport: #Method
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportNamespace [

	<generated>
	^ self shouldImport: #Namespace
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportOOInvocation [

	<generated>
	^ self shouldImport: #OOInvocation
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportParameterConcretization [

	<generated>
	^ self shouldImport: #ParameterConcretization
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportParameterType [

	<generated>
	^ self shouldImport: #ParameterType
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportParameterizableClass [

	<generated>
	^ self shouldImport: #ParameterizableClass
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportParameterizedType [

	<generated>
	^ self shouldImport: #ParameterizedType
]

{ #category : #testing }
FamixCppImportingContext >> shouldImportSourceLanguage [

	<generated>
	^ self shouldImport: #SourceLanguage
]
