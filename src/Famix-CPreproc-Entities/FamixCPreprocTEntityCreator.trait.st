"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : #FamixCPreprocTEntityCreator,
	#category : #'Famix-CPreproc-Entities-Model'
}

{ #category : #meta }
FamixCPreprocTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
	^ self
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newCFile [

	<generated>
	^ self add: FamixCPreprocCFile new
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newCompilationUnit [

	<generated>
	^ self add: FamixCPreprocCompilationUnit new
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newDiskEntity [

	<generated>
	^ self add: FamixCPreprocDiskEntity new
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newDiskEntityNamed: aName [

	<generated>
	^ self add: (FamixCPreprocDiskEntity named: aName)
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newFolder [

	<generated>
	^ self add: FamixCPreprocFolder new
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newHeaderFile [

	<generated>
	^ self add: FamixCPreprocHeaderFile new
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newInclude [

	<generated>
	^ self add: FamixCPreprocInclude new
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newPreprocessorDefine [

	<generated>
	^ self add: FamixCPreprocPreprocessorDefine new
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newPreprocessorDefineNamed: aName [

	<generated>
	^ self add: (FamixCPreprocPreprocessorDefine named: aName)
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newPreprocessorIfdef [

	<generated>
	^ self add: FamixCPreprocPreprocessorIfdef new
]

{ #category : #'entity creation' }
FamixCPreprocTEntityCreator >> newPreprocessorStatement [

	<generated>
	^ self add: FamixCPreprocPreprocessorStatement new
]
