"
TODO
"
Class {
	#name : #FamixCppConditionalsGrammar,
	#superclass : #PP2CompositeNode,
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

	^ $} asPParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> blockContent [
	^ (blockClosing not , (comment / string / controlStructure / water)) plus
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> blockOpening [

	^ ${ asPParser
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
	^ ('case ' asPParser , $: asPParser negate plus) / 'default' asPParser , $: asPParser
]

{ #category : #switchs }
FamixCppConditionalsGrammar >> cases [
	^ case plus
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> comment [

	^ '//' asPParser , #newline asPParser negate star
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> condition [
	^ conditionOpening, conditionContent, conditionClosing
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> conditionClosing [
	^ $) asPParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> conditionContent [
	^ (conditionClosing not , (comment / string / condition / water)) star
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> conditionOpening [
	^ $( asPParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> controlStructure [
	^ for / while / ifElse / doWhile / switchCases
]

{ #category : #loops }
FamixCppConditionalsGrammar >> doWhile [
	^ 'do' asPParser trim, block, 'while' asPParser trim, condition
]

{ #category : #ifs }
FamixCppConditionalsGrammar >> else [
	^ 'else' asPParser trim , blockOrStatement
]

{ #category : #ifs }
FamixCppConditionalsGrammar >> elseIf [
	^ ('else if' asPParser trim , condition trim , blockOrStatement)
]

{ #category : #loops }
FamixCppConditionalsGrammar >> for [

	^ 'for' asPParser , condition trim , blockOrStatement
]

{ #category : #ifs }
FamixCppConditionalsGrammar >> ifElse [
	^ 'if' asPParser , condition trim , blockOrStatement , elseIf star , else optional
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> oneLineStatement [
	^ (statementEnding negate plus, statementEnding)
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> start [

	^ (controlStructure / comment / water) plus end
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> statement [
	^ controlStructure / oneLineStatement
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> statementEnding [
	^ $; asPParser
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> string [

	^ $" asPParser , ('\"' asPParser / $" asPParser negate) plus
	  , $" asPParser
]

{ #category : #switchs }
FamixCppConditionalsGrammar >> switchCases [

	^ 'switch' asPParser trim , condition , blockOpening trim , cases
	  , blockClosing trim
]

{ #category : #accessing }
FamixCppConditionalsGrammar >> water [
	^ #any asPParser
]

{ #category : #loops }
FamixCppConditionalsGrammar >> while [

	^ 'while' asPParser , condition trim , blockOrStatement
]
