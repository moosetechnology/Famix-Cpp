Extension { #name : #FamixTWithStatements }

{ #category : #'*Famix-Cpp-Parser' }
FamixTWithStatements >> blocks [
	| result |
	result := self propertyNamed: #blocks ifAbsentPut: [ self computesBlocks ].
	^ result isPetitFailure
		ifFalse: [ result ]
		ifTrue: [ {} ]
]

{ #category : #'*Famix-Cpp-Parser' }
FamixTWithStatements >> computesBlocks [
	| res |
	self hasSourceAnchor ifFalse: [ ^ {} ].
	
	res := OrderedCollection new.
	self sourceAnchor allSourceAnchors
		select: [ :e | (e fileReference extension includes: $c) and: [ e sourceText isNotEmpty ] ]
		thenDo: [ :sa | 
			res
				addAll:
					(FamixCppConditionalsParser new
						method: self;
						sourceAnchor: sa;
						parse) ].
	^ res
]
