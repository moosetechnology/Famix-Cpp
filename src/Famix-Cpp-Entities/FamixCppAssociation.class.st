Class {
	#name : #FamixCppAssociation,
	#superclass : #FamixCppSourcedEntity,
	#traits : 'FamixTAssociation',
	#classTraits : 'FamixTAssociation classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppAssociation class >> annotation [

	<FMClass: #Association super: #FamixCppSourcedEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #printing }
FamixCppAssociation >> displayStringOn: aStream [
	self flag: 'TODO'.
	aStream nextPutAll: ' TODO -> TODO'
	"self source displayStringOn: aStream.
	aStream nextPutAll: ' -> '.
	self target displayStringOn: aStream"
]

{ #category : #accessing }
FamixCppAssociation >> start [
	^ self sourceAnchor
		ifNotNil: #startPos
		ifNil: [ MooseUnavailableMetric ]
]

{ #category : #accessing }
FamixCppAssociation >> stop [
	^ self sourceAnchor
		ifNotNil: #endPos
		ifNil: [ MooseUnavailableMetric ]
]
