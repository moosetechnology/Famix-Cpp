Class {
	#name : #FamixCppMethod,
	#superclass : #FamixCppBehaviouralEntity,
	#traits : '(FamixTHasModifiers + FamixTMethod + FamixTHasKind + FamixTWithTypes withPrecedenceOf: FamixTHasModifiers)',
	#classTraits : '(FamixTHasModifiers classTrait + FamixTMethod classTrait + FamixTHasKind classTrait + FamixTWithTypes classTrait withPrecedenceOf: FamixTHasModifiers classTrait)',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppMethod class >> annotation [

	<FMClass: #Method super: #FamixCppBehaviouralEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixCppMethod >> clientTypes [
	<FMProperty: #clientTypes type: #FamixTType>
	<multivalued>
	<derived>
	<FMComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FamixTType) withoutSelfLoops

]

{ #category : #testing }
FamixCppMethod >> isConstructor [
	^ #constructor = self kind or: [ self parentType ifNotNil: [ :type | self name = type name ] ]
]

{ #category : #testing }
FamixCppMethod >> isDead [
	<FMProperty: #isDead type: #Boolean>
	<derived>
	<FMComment: 'Is the entity dead (not invoked in the system)'>
	(self isConstructor or: [ self isDestructor ]) ifTrue: [ ^ false ].

	^ self isContainerEntity
		ifTrue: [ self lookUpPropertyNamed: #isDead computedAs: [ self hasIncoming not or: [ self queryAllIncoming withoutSelfLoops isEmpty ] ] ]
		ifFalse: [ false ]
]

{ #category : #testing }
FamixCppMethod >> isDestructor [
	^ #destructor = self kind or: [ self parentType ifNotNil: [ :type | self name = ('~' , type name) ] ]
]

{ #category : #accessing }
FamixCppMethod >> isDestructor: aBoolean [
	aBoolean
		ifTrue: [ self kind: #destructor ]
		ifFalse: [ self isDestructor
				ifTrue: [ self kind: nil ] ]
]
