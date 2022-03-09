Class {
	#name : #FamixCppFor,
	#superclass : #FamixCppConditional,
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppFor class >> annotation [

	<FMClass: #For super: #FamixCppConditional>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #display }
FamixCppFor class >> nameTranslations [
	^ Dictionary
		with: #english -> 'For'
		with: #french -> 'For'
]
