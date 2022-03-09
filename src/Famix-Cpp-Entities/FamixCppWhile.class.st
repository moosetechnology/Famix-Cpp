Class {
	#name : #FamixCppWhile,
	#superclass : #FamixCppConditional,
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppWhile class >> annotation [

	<FMClass: #While super: #FamixCppConditional>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #display }
FamixCppWhile class >> nameTranslations [
	^ Dictionary
		with: #english -> 'While'
		with: #french -> 'While'
]
