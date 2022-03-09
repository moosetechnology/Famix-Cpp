"
TODO
"
Class {
	#name : #FamixCppCSVGrammar,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'namespaces',
		'types',
		'classes',
		'enums',
		'functions',
		'variables',
		'edges',
		'csvValue',
		'csvLine',
		'fileLocation',
		'namespace',
		'type',
		'classe',
		'enum',
		'function',
		'variable',
		'edge',
		'filesLocations',
		'edgeUnspecified',
		'edgeBaseClass',
		'edgeFriend',
		'edgeTemplate',
		'edgeTemplateParam',
		'edgeMemberObject',
		'edgeCall',
		'edgeVirtCall',
		'edgeVarRead',
		'edgeVarWrite',
		'edgeConst',
		'edgeFuncAddr',
		'edgeOverCall'
	],
	#category : #'Famix-Cpp-Parser'
}

{ #category : #accessing }
FamixCppCSVGrammar >> classe [
	^ csvLine
]

{ #category : #accessing }
FamixCppCSVGrammar >> classes [
	^ (self header: '#Classes' description: 'id,name,typeId,parentId,file,line,column,abstract,trivial,kind') , classe plus
]

{ #category : #util }
FamixCppCSVGrammar >> csvLine [
	^ $# asPParser not, (csvValue separatedBy: $, asPParser) withoutSeparators ", #newline asPParser plus"
]

{ #category : #util }
FamixCppCSVGrammar >> csvValue [
	^ (($" asPParser , $" asPParser negate star flatten, $" asPParser) ==> [ :p | p second ]) / ($, asPParser / #newline asPParser) negate star flatten
]

{ #category : #edges }
FamixCppCSVGrammar >> edge [
	^ $# asPParser not , ((csvValue , $, asPParser) ==> [ :p | p first ] times: 5)
		,
			(edgeConst / edgeFuncAddr / edgeOverCall / edgeUnspecified / edgeBaseClass / edgeFriend / edgeTemplate / edgeTemplateParam / edgeMemberObject
				/ edgeCall / edgeVirtCall / edgeVarRead / edgeVarWrite)	", #newline asPParser plus"
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeBaseClass [
	^ self edgeWithKind: 1
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeCall [
	^ self edgeWithKind: 6
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeConst [
	^ self edgeWithKind: 10
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeFriend [
	^ self edgeWithKind: 2
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeFuncAddr [
	^ self edgeWithKind: 11
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeMemberObject [
	^ self edgeWithKind: 5
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeOverCall [
	^ self edgeWithKind: 12
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeTemplate [
	^ self edgeWithKind: 3
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeTemplateParam [
	^ self edgeWithKind: 4
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeUnspecified [
	^ self edgeWithKind: 0
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeVarRead [
	^ self edgeWithKind: 8
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeVarWrite [
	^ self edgeWithKind: 9
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeVirtCall [
	^ self edgeWithKind: 7
]

{ #category : #edges }
FamixCppCSVGrammar >> edgeWithKind: aCodeNumber [
	^ aCodeNumber asString asPParser
]

{ #category : #edges }
FamixCppCSVGrammar >> edges [
	^ (self header: '#Edges' description: 'sourceId,targetId,file,line,column,edgeType') , edge plus
]

{ #category : #accessing }
FamixCppCSVGrammar >> enum [
	^ csvLine
]

{ #category : #accessing }
FamixCppCSVGrammar >> enums [
	^ (self header: '#Enums' description: 'id,name,typeId,parentId,file,line,column') ,  enum plus
]

{ #category : #accessing }
FamixCppCSVGrammar >> fileLocation [
	^ csvLine
]

{ #category : #accessing }
FamixCppCSVGrammar >> filesLocations [
	^ (self header: '#Files' description: 'fileId,path'),  fileLocation plus
]

{ #category : #accessing }
FamixCppCSVGrammar >> function [
	^ csvLine
]

{ #category : #accessing }
FamixCppCSVGrammar >> functions [
	^ (self header: '#Funcs' description: 'id,name,typeId,parentId,file,line,column,lineE,vindex') , function plus
]

{ #category : #util }
FamixCppCSVGrammar >> header: title description: description [
	^ title asPParser, #newline asPParser, description asPParser, #newline asPParser
]

{ #category : #accessing }
FamixCppCSVGrammar >> namespace [
	^ csvLine
]

{ #category : #accessing }
FamixCppCSVGrammar >> namespaces [
	^ (self header: '#Namespaces' description: 'id,name,parentId,file,line,column'), namespace plus
]

{ #category : #accessing }
FamixCppCSVGrammar >> package [
	^ csvLine
]

{ #category : #accessing }
FamixCppCSVGrammar >> start [
	"Answer the production to start this parser with."

	^ (filesLocations, namespaces, types, classes, enums, functions, variables, edges) end
]

{ #category : #accessing }
FamixCppCSVGrammar >> type [
	^ csvLine
]

{ #category : #accessing }
FamixCppCSVGrammar >> types [
	^ (self header: '#Types' description: 'id,name'), type plus
]

{ #category : #accessing }
FamixCppCSVGrammar >> variable [
	^ csvLine
]

{ #category : #accessing }
FamixCppCSVGrammar >> variables [
	^ (self header: '#Vars' description: 'id,name,typeId,parentId,file,line,column'), variable plus
]
