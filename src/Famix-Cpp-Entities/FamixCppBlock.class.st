Class {
	#name : #FamixCppBlock,
	#superclass : #FamixCppBehaviouralEntity,
	#instVars : [
		'#parentBlock => FMOne type: #FamixCppBehaviouralEntity opposite: #innerBlocks'
	],
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppBlock class >> annotation [

	<FMClass: #Block super: #FamixCppBehaviouralEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #display }
FamixCppBlock class >> color [
	^ MDLColor tint: #purple code: #'300'

]

{ #category : #display }
FamixCppBlock class >> kindAbbreviation [
	^ 'B'

]

{ #category : #display }
FamixCppBlock class >> nameTranslations [
	^ Dictionary
		with: #english -> 'Block'
		with: #french -> 'Bloc'
]

{ #category : #accessing }
FamixCppBlock >> accesses [
	accesses ifNil: [ self localizeDefsAndRefs ].
	^ super accesses
]

{ #category : #accessing }
FamixCppBlock >> accesses: aCollection [
	"re-implementing o that it does not set the reverse link from elements in aCollection to self"
	accesses := aCollection 
]

{ #category : #accessing }
FamixCppBlock >> attributes [
	^ self accesses collectAsSet: #variable
]

{ #category : #accessing }
FamixCppBlock >> belongsTo [
	^ self parentBlock
]

{ #category : #accessing }
FamixCppBlock >> blocks [
	^ self innerBlocks
]

{ #category : #accessing }
FamixCppBlock >> endLine [
	^ self sourceAnchor endLine

]

{ #category : #initialization }
FamixCppBlock >> getMyLocalsFrom: aCollection [
	"from aCollection of entities (or associations) with FileAnchors,
	 return those that are in the scope of receiver"

	^ aCollection select: [ :each | each sourceAnchor isNotNil and: [ each sourceAnchor isWithin: self sourceAnchor ] ]

]

{ #category : #testing }
FamixCppBlock >> hasPriorityOn: anEntity [
	^ anEntity isCPPSBlock
		ifTrue: [ self start < anEntity start ]
		ifFalse: [ (anEntity hasPriorityOn: self) not ]

]

{ #category : #testing }
FamixCppBlock >> isCPPSBlock [

	<generated>
	^ true
]

{ #category : #initialization }
FamixCppBlock >> localizeDefsAndRefs [
	(parentBlock isNotNil and: [ sourceAnchor isNotNil ]) ifFalse: [ ^ self ].
	self outgoingInvocations: (self getMyLocalsFrom: parentBlock outgoingInvocations).
	self accesses: (self getMyLocalsFrom: parentBlock accesses)
]

{ #category : #accessing }
FamixCppBlock >> mooseModel [
	^ self attributeAt: #mooseModel ifAbsent: [ parentBlock mooseModel ifNil: [ super mooseModel ] ]

]

{ #category : #accessing }
FamixCppBlock >> name [
	^ String streamContents: [ :s | self printOn: s ]

]

{ #category : #accessing }
FamixCppBlock >> outgoingInvocations: aCollection [
	"re-implementing so that it does not set the reverse link from elements in aCollection to self"
	outgoingInvocations := aCollection 

]

{ #category : #accessing }
FamixCppBlock >> parentBehavioural: anObject [
	parentBlock := anObject.
	self localizeDefsAndRefs
]

{ #category : #accessing }
FamixCppBlock >> parentBlock [
	"Relation named: #parentBlock type: #FamixCppBehaviouralEntity opposite: #innerBlocks"

	<generated>
	<FMComment: '"Block" containing this block. belongsTo implementation'>
	^ parentBlock
]

{ #category : #accessing }
FamixCppBlock >> parentBlock: anObject [

	<generated>
	parentBlock := anObject
]

{ #category : #printing }
FamixCppBlock >> printOn: aStream [
	
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		print: (sourceAnchor 
			ifNil: [ 'nil' ]
			ifNotNil: [ sourceAnchor startPos ]);
		nextPutAll: '@';
		print: (sourceAnchor 
			ifNil: [ 'nil' ]
			ifNotNil: [ sourceAnchor endPos ]);
		nextPut: $)

]

{ #category : #accessing }
FamixCppBlock >> sourceAnchor: aSourceAnchor [
	super sourceAnchor: aSourceAnchor.
	self localizeDefsAndRefs 

]

{ #category : #accessing }
FamixCppBlock >> start [
	^ self sourceAnchor startPos

]

{ #category : #accessing }
FamixCppBlock >> startLine [
	^ self sourceAnchor startLine

]

{ #category : #accessing }
FamixCppBlock >> stop [
	^ self sourceAnchor endPos

]
