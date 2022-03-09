Class {
	#name : #FamixCppFileAnchor,
	#superclass : #FamixCppSourceAnchor,
	#traits : 'FamixTFileNavigation',
	#classTraits : 'FamixTFileNavigation classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppFileAnchor class >> annotation [

	<FMClass: #FileAnchor super: #FamixCppSourceAnchor>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixCppFileAnchor >> addFileAnchorWithPath: aPath [
	^ FamixCppMultipleFileAnchor new
		mooseModel: self mooseModel;
		addSourceAnchor: self;
		addFileAnchorWithPath: aPath;
		yourself
]
