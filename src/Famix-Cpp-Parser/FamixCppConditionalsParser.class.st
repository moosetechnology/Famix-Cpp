"
TODO
"
Class {
	#name : #FamixCppConditionalsParser,
	#superclass : #FamixCppConditionalsGrammar,
	#instVars : [
		'method',
		'parsedString',
		'sourceAnchor'
	],
	#category : #'Famix-Cpp-Parser-Block'
}

{ #category : #accessing }
FamixCppConditionalsParser >> block [
	^ super block info
		==> [ :info | 
			FamixCppBlock new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				innerBlocks: info element second;
				yourself ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> blockContent [
	^ super blockContent ==> [ :p | (p collect: #second thenSelect: #notNil) flatCollect: #value ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> case [
	^ super case info
		==> [ :info | 
			FamixCppBlock new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				yourself ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> comment [
	^ super comment ==> [ :p | nil ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> condition [
	^ super condition info
		==> [ :info | 
			FamixCppCondition new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				yourself ]
]

{ #category : #helpers }
FamixCppConditionalsParser >> createAnchorFromInfo: info [
	^ FamixCppRelativeSourceAnchor new
		startPos: info start;
		endPos: info stop;
		relatedAnchor: self sourceAnchor;
		initializeStartAndEndLineFrom: parsedString; "We do it here to not have to parse again the file."
		yourself
]

{ #category : #accessing }
FamixCppConditionalsParser >> doWhile [
	^ super doWhile info
		==> [ :info | 
			{(FamixCppWhile new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				innerBlocks: (self selectBlocksfrom: info element);
				yourself)} ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> for [
	^ super for info
		==> [ :info | 
			{(FamixCppFor new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				innerBlocks: (self selectBlocksfrom: info element);
				yourself)} ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> ifElse [
	^ super ifElse info
		==> [ :info | 
			{(FamixCppIf new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				innerBlocks: (self selectBlocksfrom: info element deepFlatten);
				yourself)} ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> method [
	^ method
]

{ #category : #accessing }
FamixCppConditionalsParser >> method: anObject [
	method := anObject
]

{ #category : #accessing }
FamixCppConditionalsParser >> oneLineStatement [
	^ super oneLineStatement ==> [ :info | nil ]
]

{ #category : #parsing }
FamixCppConditionalsParser >> parse [
	^ self parse: self sourceAnchor sourceText
]

{ #category : #parsing }
FamixCppConditionalsParser >> parse: aString [
	('Parsing blocks of ' , self method mooseName asString) record.
	parsedString := aString.
	^ super parse: aString
]

{ #category : #accessing }
FamixCppConditionalsParser >> parsedString [
	^ parsedString
]

{ #category : #querying }
FamixCppConditionalsParser >> productionNames [
	^ super productionNames \ {#method}
]

{ #category : #helpers }
FamixCppConditionalsParser >> selectBlocksfrom: collection [
	^ collection select: #isCPPSBlock
]

{ #category : #accessing }
FamixCppConditionalsParser >> sourceAnchor [
	^ sourceAnchor
]

{ #category : #accessing }
FamixCppConditionalsParser >> sourceAnchor: anObject [
	sourceAnchor := anObject
]

{ #category : #accessing }
FamixCppConditionalsParser >> start [
	^ super start ==> [ :p | (p select: #isNotNil) flatCollect: #value ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> statement [
	^ super statement info
		==> [ :info | 
			FamixCppBlock new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				yourself ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> string [
	^ super string ==> [ :p | nil ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> switchCases [
	^ super switchCases info
		==> [ :info | 
			{(FamixCppSwitch new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				innerBlocks: (self selectBlocksfrom: info element deepFlatten);
				yourself)} ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> water [
	^ super water ==> [ :p | nil ]
]

{ #category : #accessing }
FamixCppConditionalsParser >> while [
	^ super while info
		==> [ :info | 
			{(FamixCppWhile new
				parentBehavioural: self method;
				sourceAnchor: (self createAnchorFromInfo: info);
				innerBlocks: (self selectBlocksfrom: info element);
				yourself)} ]
]
