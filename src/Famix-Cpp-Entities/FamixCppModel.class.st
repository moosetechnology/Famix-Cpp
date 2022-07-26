Class {
	#name : #FamixCppModel,
	#superclass : #MooseModel,
	#category : #'Famix-Cpp-Entities-Model'
}

{ #category : #accessing }
FamixCppModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FamixCppModel class >> annotation [
	<FMClass: #FamixCppModel super: #MooseModel>
	<package: #'Famix-Cpp-Entities'>
	<generated>
]

{ #category : #meta }
FamixCppModel class >> canBeImportedFromFile [
	^ true
]

{ #category : #accessing }
FamixCppModel >> allMainEntities [
	<navigation: 'All main entities'>
	^ self
		lookUpPropertyNamed: #allMainEntities
		computedAs: [ 'Compute allMainEntities' record.
			self allModelBehaviourals , self allModelContainers ]
]

{ #category : #accessing }
FamixCppModel >> allModelClasses [
	<navigation: 'All model classes'>
	"a cpp model can have types or classes hence we show both: types and classes.
	we double check here that types shown have sourceanchor in addition to checking in the super class that these are stubs
	we try to avoid showing type alias in the interface"

	^ self lookUpPropertyNamed: #allModelClasses computedAs: [ self allTypes reject: [ :each | each isStub or: [ each hasSourceAnchor not ] ] ]
]

{ #category : #accessing }
FamixCppModel >> allModelFunctions [
	^ self
		lookUpPropertyNamed: #allModelFunctions
		computedAs: [ 'Compute allModelFunctions' record.
			self allFunctions reject: #isStub ]
]

{ #category : #metrics }
FamixCppModel >> complexityRate [
	^ self allModelBehaviourals average: #cyclomaticComplexity
]

{ #category : #'dead code' }
FamixCppModel >> computeAllBehaviouralsWithDeadCode [
	'Compute computeAllBehaviouralsWithDeadCode' record.
	^ super computeAllBehaviouralsWithDeadCode

]

{ #category : #accessing }
FamixCppModel >> computeAllModelBehaviourals [
	self flag: #todo.	"we remove empty functions because these are function pointers and we dont know yet how to show  these in the interface correctly"
	^ super computeAllModelBehaviourals reject: [ :each | each name isEmpty ]

]

{ #category : #accessing }
FamixCppModel >> computeAllModelContainers [ 
	'Compute all model containers' record.
	^ (self allWithSubTypesOf: FamixCppContainerEntity) reject: #isStub

]

{ #category : #accessing }
FamixCppModel >> computeNumberOfLinesOfCode [
	"the number of lines of code for a C/C++ model is the number of lines in individual source (header and source) files."

	"sum of the number of lines in each file. fileAnchor with same file name are counted only once"

	^ ((self allUsing: FamixTFileAnchor) groupedBy: #fileName) values sum: [ :indexedFileAnchorGroup | indexedFileAnchorGroup anyOne completeText lineCount ]
]

{ #category : #actions }
FamixCppModel >> detectEncodingOfAllFileAnchors [
	self execute: [ super detectEncodingOfAllFileAnchors ] recordedAs: 'Detection of the encodings of files'
]

{ #category : #accessing }
FamixCppModel >> entitiesForReplicationDetection [
	"for duplication entities we have to assert that their start and end are known. for now the problem only occurs for Siemens ref file, we might need to make it common to all models"

	^ self allModelMethods asOrderedCollection, self allModelFunctions
]

{ #category : #actions }
FamixCppModel >> exportToMSEStream: aStream [
	self execute: [ super exportToMSEStream: aStream ] recordedAs: 'Export of a ' , self class printString
]

{ #category : #actions }
FamixCppModel >> importFromMSEStream: aStream [
	"During loading, the MSE parser does not guarantee the order of the loading and so the consistency of the model; that's why we have to ignore assertions during loading"

	self
		execute: [ [ super importFromMSEStream: aStream ]
				on: AssertionFailure
				do: [ :ex | ex resume ] ]
		recordedAs: 'Import of a ' , self class printString
]

{ #category : #initialize }
FamixCppModel >> initialize [
	super initialize.
	self flag: 'TODO'.
	"self rulesManager: RuRulesManager new.
	self initializeDefaultRules"

]

{ #category : #accessing }
FamixCppModel >> replicationDetectionConfiguration [
	^ FamixRepConfiguration
		sourcesCleaner: FamixRepCLikeCleaner new
		minimumNumberOfReplicas: 2
		ofLines: 100
		ofCharacters: 80
]
