"
This class is used to choose the entities to be imported when loading a model from file.
It is used by `MiImportingContextPresenter` in a `MiImportModelFromFileDialog` to import a FamixCModel.
"
Class {
	#name : #FamixCImportingContext,
	#superclass : #FamixImportingContext,
	#category : #'Famix-C-Entities-Import'
}

{ #category : #accessing }
FamixCImportingContext class >> importedMetamodel [

	<generated>
	^ FamixCModel metamodel
]

{ #category : #importing }
FamixCImportingContext >> importAccess [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Access)
]

{ #category : #importing }
FamixCImportingContext >> importAliasType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #AliasType)
]

{ #category : #importing }
FamixCImportingContext >> importAssociation [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Association)
]

{ #category : #importing }
FamixCImportingContext >> importAttribute [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Attribute)
]

{ #category : #importing }
FamixCImportingContext >> importBehaviouralEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #BehaviouralEntity)
]

{ #category : #importing }
FamixCImportingContext >> importBehaviouralPointer [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #BehaviouralPointer)
]

{ #category : #importing }
FamixCImportingContext >> importComment [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Comment)
]

{ #category : #importing }
FamixCImportingContext >> importContainerEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ContainerEntity)
]

{ #category : #importing }
FamixCImportingContext >> importDereferencedInvocation [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #DereferencedInvocation)
]

{ #category : #importing }
FamixCImportingContext >> importEnum [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Enum)
]

{ #category : #importing }
FamixCImportingContext >> importEnumValue [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #EnumValue)
]

{ #category : #importing }
FamixCImportingContext >> importFunction [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Function)
]

{ #category : #importing }
FamixCImportingContext >> importIndexedFileAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #IndexedFileAnchor)
]

{ #category : #importing }
FamixCImportingContext >> importInvocation [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Invocation)
]

{ #category : #importing }
FamixCImportingContext >> importLocalVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #LocalVariable)
]

{ #category : #importing }
FamixCImportingContext >> importMultipleFileAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #MultipleFileAnchor)
]

{ #category : #importing }
FamixCImportingContext >> importParameter [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Parameter)
]

{ #category : #importing }
FamixCImportingContext >> importPrimitiveType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PrimitiveType)
]

{ #category : #importing }
FamixCImportingContext >> importReference [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Reference)
]

{ #category : #importing }
FamixCImportingContext >> importRelativeSourceAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #RelativeSourceAnchor)
]

{ #category : #importing }
FamixCImportingContext >> importSourceLanguage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceLanguage)
]

{ #category : #importing }
FamixCImportingContext >> importSourceTextAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceTextAnchor)
]

{ #category : #importing }
FamixCImportingContext >> importStruct [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Struct)
]

{ #category : #importing }
FamixCImportingContext >> importStructuredType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #StructuredType)
]

{ #category : #importing }
FamixCImportingContext >> importType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Type)
]

{ #category : #importing }
FamixCImportingContext >> importUnion [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Union)
]

{ #category : #importing }
FamixCImportingContext >> importUnknownBehaviouralEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UnknownBehaviouralEntity)
]

{ #category : #importing }
FamixCImportingContext >> importUnknownContainerEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UnknownContainerEntity)
]

{ #category : #importing }
FamixCImportingContext >> importUnknownSourceLanguage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UnknownSourceLanguage)
]

{ #category : #importing }
FamixCImportingContext >> importUnknownVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UnknownVariable)
]

{ #category : #testing }
FamixCImportingContext >> shouldImportAccess [

	<generated>
	^ self shouldImport: #Access
]

{ #category : #testing }
FamixCImportingContext >> shouldImportAliasType [

	<generated>
	^ self shouldImport: #AliasType
]

{ #category : #testing }
FamixCImportingContext >> shouldImportAssociation [

	<generated>
	^ self shouldImport: #Association
]

{ #category : #testing }
FamixCImportingContext >> shouldImportAttribute [

	<generated>
	^ self shouldImport: #Attribute
]

{ #category : #testing }
FamixCImportingContext >> shouldImportBehaviouralEntity [

	<generated>
	^ self shouldImport: #BehaviouralEntity
]

{ #category : #testing }
FamixCImportingContext >> shouldImportBehaviouralPointer [

	<generated>
	^ self shouldImport: #BehaviouralPointer
]

{ #category : #testing }
FamixCImportingContext >> shouldImportComment [

	<generated>
	^ self shouldImport: #Comment
]

{ #category : #testing }
FamixCImportingContext >> shouldImportContainerEntity [

	<generated>
	^ self shouldImport: #ContainerEntity
]

{ #category : #testing }
FamixCImportingContext >> shouldImportDereferencedInvocation [

	<generated>
	^ self shouldImport: #DereferencedInvocation
]

{ #category : #testing }
FamixCImportingContext >> shouldImportEnum [

	<generated>
	^ self shouldImport: #Enum
]

{ #category : #testing }
FamixCImportingContext >> shouldImportEnumValue [

	<generated>
	^ self shouldImport: #EnumValue
]

{ #category : #testing }
FamixCImportingContext >> shouldImportFunction [

	<generated>
	^ self shouldImport: #Function
]

{ #category : #testing }
FamixCImportingContext >> shouldImportIndexedFileAnchor [

	<generated>
	^ self shouldImport: #IndexedFileAnchor
]

{ #category : #testing }
FamixCImportingContext >> shouldImportInvocation [

	<generated>
	^ self shouldImport: #Invocation
]

{ #category : #testing }
FamixCImportingContext >> shouldImportLocalVariable [

	<generated>
	^ self shouldImport: #LocalVariable
]

{ #category : #testing }
FamixCImportingContext >> shouldImportMultipleFileAnchor [

	<generated>
	^ self shouldImport: #MultipleFileAnchor
]

{ #category : #testing }
FamixCImportingContext >> shouldImportParameter [

	<generated>
	^ self shouldImport: #Parameter
]

{ #category : #testing }
FamixCImportingContext >> shouldImportPrimitiveType [

	<generated>
	^ self shouldImport: #PrimitiveType
]

{ #category : #testing }
FamixCImportingContext >> shouldImportReference [

	<generated>
	^ self shouldImport: #Reference
]

{ #category : #testing }
FamixCImportingContext >> shouldImportRelativeSourceAnchor [

	<generated>
	^ self shouldImport: #RelativeSourceAnchor
]

{ #category : #testing }
FamixCImportingContext >> shouldImportSourceLanguage [

	<generated>
	^ self shouldImport: #SourceLanguage
]

{ #category : #testing }
FamixCImportingContext >> shouldImportSourceTextAnchor [

	<generated>
	^ self shouldImport: #SourceTextAnchor
]

{ #category : #testing }
FamixCImportingContext >> shouldImportStruct [

	<generated>
	^ self shouldImport: #Struct
]

{ #category : #testing }
FamixCImportingContext >> shouldImportStructuredType [

	<generated>
	^ self shouldImport: #StructuredType
]

{ #category : #testing }
FamixCImportingContext >> shouldImportType [

	<generated>
	^ self shouldImport: #Type
]

{ #category : #testing }
FamixCImportingContext >> shouldImportUnion [

	<generated>
	^ self shouldImport: #Union
]

{ #category : #testing }
FamixCImportingContext >> shouldImportUnknownBehaviouralEntity [

	<generated>
	^ self shouldImport: #UnknownBehaviouralEntity
]

{ #category : #testing }
FamixCImportingContext >> shouldImportUnknownContainerEntity [

	<generated>
	^ self shouldImport: #UnknownContainerEntity
]

{ #category : #testing }
FamixCImportingContext >> shouldImportUnknownSourceLanguage [

	<generated>
	^ self shouldImport: #UnknownSourceLanguage
]

{ #category : #testing }
FamixCImportingContext >> shouldImportUnknownVariable [

	<generated>
	^ self shouldImport: #UnknownVariable
]
