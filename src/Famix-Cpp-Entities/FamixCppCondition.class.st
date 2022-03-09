Class {
	#name : #FamixCppCondition,
	#superclass : #FamixCppBlock,
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppCondition class >> annotation [

	<FMClass: #Condition super: #FamixCppBlock>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #display }
FamixCppCondition class >> nameTranslations [
	^ Dictionary
		with: #english -> 'Block''s condition'
		with: #french -> 'Condition du bloc'
]
