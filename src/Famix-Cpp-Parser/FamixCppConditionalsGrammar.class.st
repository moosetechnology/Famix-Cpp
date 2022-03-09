"
TODO
"
Class {
	#name : #FamixCppConditionalsGrammar,
	#superclass : #PPCompositeParser,
	#instVars : [
		'while',
		'block',
		'blockClosing',
		'blockContent',
		'blockOpening',
		'blockOrStatement',
		'case',
		'caseDeclaration',
		'cases',
		'comment',
		'condition',
		'conditionClosing',
		'conditionContent',
		'conditionOpening',
		'controlStructure',
		'doWhile',
		'else',
		'elseIf',
		'for',
		'ifElse',
		'oneLineStatement',
		'statement',
		'statementEnding',
		'string',
		'switchCases',
		'water'
	],
	#category : #'Famix-Cpp-Parser-Block'
}

{ #category : #accessing }
FamixCppConditionalsGrammar >> block [
	^ blockOpening, blockContent, blockClosing
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> blockClosing [
	^ $} asParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> blockContent [
	^ (blockClosing not , (comment / string / controlStructure / water)) plus
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> blockOpening [
	^ ${ asParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> blockOrStatement [ 
	^ block / statement
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> case [
	^ caseDeclaration , ((block negate , caseDeclaration not, blockClosing not) plus , block) star , (caseDeclaration / blockClosing) negate plus 
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> caseDeclaration [
	^ ('case ' asParser , $: asParser negate plus) / 'default' asParser , $: asParser
]

{ #category : #switchs }
FamixCppConditionalsGrammar >> cases [
	^ case plus
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> comment [
	^ '//' asParser, #newline asParser negate star
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> condition [
	^ conditionOpening, conditionContent, conditionClosing
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> conditionClosing [
	^ $) asParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> conditionContent [
	^ (conditionClosing not , (comment / string / condition / water)) star
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> conditionOpening [
	^ $( asParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> controlStructure [
	^ (for / while / ifElse / doWhile / switchCases) memoized
]

{ #category : #loops }
FamixCppConditionalsGrammar >> doWhile [
	^ 'do' asParser trim, block, 'while' asParser trim, condition
]

{ #category : #ifs }
FamixCppConditionalsGrammar >> else [
	^ 'else' asParser trim , blockOrStatement
]

{ #category : #ifs }
FamixCppConditionalsGrammar >> elseIf [
	^ ('else if' asParser trim , condition trim , blockOrStatement)
]

{ #category : #loops }
FamixCppConditionalsGrammar >> for [
	^ 'for' asParser, condition trim, blockOrStatement
]

{ #category : #ifs }
FamixCppConditionalsGrammar >> ifElse [
	^ 'if' asParser , condition trim , blockOrStatement , elseIf star , else optional
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> oneLineStatement [
	^ (statementEnding negate plus, statementEnding)
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> start [
	^ ((controlStructure / comment / water) plus preProcessor: comment ==> [ :p | '' ])
		preProcessor: (#newline asParser , $# asParser , #newline asParser negate plus) ==> [ :p | '' ]
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> statement [
	^ controlStructure / oneLineStatement
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> statementEnding [
	^ $; asParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> string [
	^ $" asParser, ('\"' asParser / ($" asParser negate)) plus, $" asParser
]

{ #category : #switchs }
FamixCppConditionalsGrammar >> switchCases [
	^ 'switch' asParser trim, condition, blockOpening trim, cases , blockClosing trim
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> water [
	^ #any asParser
]

{ #category : #loops }
FamixCppConditionalsGrammar >> while [
	^ 'while' asParser, condition trim, blockOrStatement 
]
