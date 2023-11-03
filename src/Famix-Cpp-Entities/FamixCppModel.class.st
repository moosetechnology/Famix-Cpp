Class {
	#name : #FamixCppModel,
	#superclass : #MooseModel,
	#traits : 'FamixCPreprocTEntityCreator + FamixCTEntityCreator + FamixCppTEntityCreator',
	#classTraits : 'FamixCPreprocTEntityCreator classTrait + FamixCTEntityCreator classTrait + FamixCppTEntityCreator classTrait',
	#category : #'Famix-Cpp-Entities-Model'
}

{ #category : #accessing }
FamixCppModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'Famix-CPreproc-Entities' #'Famix-C-Entities')
]

{ #category : #meta }
FamixCppModel class >> annotation [
	<FMClass: #FamixCppModel super: #MooseModel>
	<package: #'Famix-Cpp-Entities'>
	<generated>
]

{ #category : #testing }
FamixCppModel class >> canBeImportedFromFile [
	<generated>
	^true
]

{ #category : #accessing }
FamixCppModel class >> importingContextClass [

	<generated>
	^ FamixCppImportingContext
]
