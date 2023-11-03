Class {
	#name : #FamixCPreprocModel,
	#superclass : #MooseModel,
	#traits : 'FamixCPreprocTEntityCreator',
	#classTraits : 'FamixCPreprocTEntityCreator classTrait',
	#category : #'Famix-CPreproc-Entities-Model'
}

{ #category : #accessing }
FamixCPreprocModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FamixCPreprocModel class >> annotation [
	<FMClass: #FamixCPreprocModel super: #MooseModel>
	<package: #'Famix-CPreproc-Entities'>
	<generated>
]
