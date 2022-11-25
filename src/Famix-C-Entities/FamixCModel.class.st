Class {
	#name : #FamixCModel,
	#superclass : #MooseModel,
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
