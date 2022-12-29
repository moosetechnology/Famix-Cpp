Class {
	#name : #FamixCppModel,
	#superclass : #MooseModel,
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
