Class {
	#name : #FamixCppRelativeSourceAnchor,
	#superclass : #FamixCppEntity,
	#traits : 'FamixTRelativeSourceAnchor',
	#classTraits : 'FamixTRelativeSourceAnchor classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppRelativeSourceAnchor class >> annotation [

	<FMClass: #RelativeSourceAnchor super: #FamixCppEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixCppRelativeSourceAnchor >> startBeforeFileAnchor: aTFileAnchor [
	(self startLine isNil or: [ aTFileAnchor startLine isNil ]) ifTrue: [ ^ false ].
		
	^ aTFileAnchor startLine >= self startLine

]
