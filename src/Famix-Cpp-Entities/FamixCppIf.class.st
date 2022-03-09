Class {
	#name : #FamixCppIf,
	#superclass : #FamixCppConditional,
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppIf class >> annotation [

	<FMClass: #If super: #FamixCppConditional>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #display }
FamixCppIf class >> nameTranslations [
	^ Dictionary
		with: #english -> 'If'
		with: #french -> 'If'
]
