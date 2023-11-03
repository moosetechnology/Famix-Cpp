Class {
	#name : #FamixCModel,
	#superclass : #MooseModel,
	#traits : 'FamixCPreprocTEntityCreator + FamixCTEntityCreator',
	#classTraits : 'FamixCPreprocTEntityCreator classTrait + FamixCTEntityCreator classTrait',
	#category : #'Famix-C-Entities-Model'
}

{ #category : #accessing }
FamixCModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'Famix-CPreproc-Entities')
]

{ #category : #meta }
FamixCModel class >> annotation [
	<FMClass: #FamixCModel super: #MooseModel>
	<package: #'Famix-C-Entities'>
	<generated>
]

{ #category : #testing }
FamixCModel class >> canBeImportedFromFile [
	<generated>
	^true
]

{ #category : #accessing }
FamixCModel class >> importingContextClass [

	<generated>
	^ FamixCImportingContext
]
