"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FamixCTEntityCreator',
	#category : 'Famix-C-Entities-Model',
	#package : 'Famix-C-Entities',
	#tag : 'Model'
}

{ #category : 'meta' }
FamixCTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'Famix-C-Entities'>
	<generated>
	^ self
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newAccess [

	<generated>
	^ self add: FamixCAccess new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newAliasType [

	<generated>
	^ self add: FamixCAliasType new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newAssociation [

	<generated>
	^ self add: FamixCAssociation new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newAttribute [

	<generated>
	^ self add: FamixCAttribute new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newAttributeNamed: aName [

	<generated>
	^ self add: (FamixCAttribute named: aName)
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newBehaviouralEntity [

	<generated>
	^ self add: FamixCBehaviouralEntity new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newBehaviouralPointer [

	<generated>
	^ self add: FamixCBehaviouralPointer new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newComment [

	<generated>
	^ self add: FamixCComment new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newContainerEntity [

	<generated>
	^ self add: FamixCContainerEntity new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newDereferencedInvocation [

	<generated>
	^ self add: FamixCDereferencedInvocation new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newEnum [

	<generated>
	^ self add: FamixCEnum new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newEnumNamed: aName [

	<generated>
	^ self add: (FamixCEnum named: aName)
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newEnumValue [

	<generated>
	^ self add: FamixCEnumValue new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newEnumValueNamed: aName [

	<generated>
	^ self add: (FamixCEnumValue named: aName)
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newFunction [

	<generated>
	^ self add: FamixCFunction new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newFunctionNamed: aName [

	<generated>
	^ self add: (FamixCFunction named: aName)
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newIndexedFileAnchor [

	<generated>
	^ self add: FamixCIndexedFileAnchor new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newInvocation [

	<generated>
	^ self add: FamixCInvocation new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newLocalVariable [

	<generated>
	^ self add: FamixCLocalVariable new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newLocalVariableNamed: aName [

	<generated>
	^ self add: (FamixCLocalVariable named: aName)
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newMultipleFileAnchor [

	<generated>
	^ self add: FamixCMultipleFileAnchor new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newParameter [

	<generated>
	^ self add: FamixCParameter new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newParameterNamed: aName [

	<generated>
	^ self add: (FamixCParameter named: aName)
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newPrimitiveType [

	<generated>
	^ self add: FamixCPrimitiveType new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newPrimitiveTypeNamed: aName [

	<generated>
	^ self add: (FamixCPrimitiveType named: aName)
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newReference [

	<generated>
	^ self add: FamixCReference new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newRelativeSourceAnchor [

	<generated>
	^ self add: FamixCRelativeSourceAnchor new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newSourceLanguage [

	<generated>
	^ self add: FamixCSourceLanguage new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newSourceTextAnchor [

	<generated>
	^ self add: FamixCSourceTextAnchor new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newStruct [

	<generated>
	^ self add: FamixCStruct new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newStructuredType [

	<generated>
	^ self add: FamixCStructuredType new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newType [

	<generated>
	^ self add: FamixCType new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newTypeNamed: aName [

	<generated>
	^ self add: (FamixCType named: aName)
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newUnion [

	<generated>
	^ self add: FamixCUnion new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newUnknownBehaviouralEntity [

	<generated>
	^ self add: FamixCUnknownBehaviouralEntity new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newUnknownContainerEntity [

	<generated>
	^ self add: FamixCUnknownContainerEntity new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newUnknownVariable [

	<generated>
	^ self add: FamixCUnknownVariable new
]

{ #category : 'entity creation' }
FamixCTEntityCreator >> newUnknownVariableNamed: aName [

	<generated>
	^ self add: (FamixCUnknownVariable named: aName)
]
