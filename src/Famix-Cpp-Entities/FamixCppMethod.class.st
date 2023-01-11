Class {
	#name : #FamixCppMethod,
	#superclass : #FamixCBehaviouralEntity,
	#traits : 'FamixTHasKind + FamixTMethod',
	#classTraits : 'FamixTHasKind classTrait + FamixTMethod classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppMethod class >> annotation [

	<FMClass: #Method super: #FamixCBehaviouralEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixCppMethod >> isConstructor [

	<FMProperty: #isConstructor type: #Boolean>
	<derived>
	<FMComment: 'True if the method is a constructor of the class'>
	^ #constructor = self kind or: [ 
		  (self parentType
			   ifNotNil: [ :type | type name = self name ]
			   ifNil: [ false ]) or: [ 
			  self cacheAt: #isConstructor ifAbsent: [ false ] ] ]
]

{ #category : #testing }
FamixCppMethod >> isDestructor [

	<FMProperty: #isDestructor type: #Boolean>
	<derived>
	<FMComment: 'True if the method is a destructor of the class'>
	^ #destructor = self kind or: [ 
		  (self parentType
			   ifNotNil: [ :type | '~' , type name = self name ]
			   ifNil: [ false ]) or: [ 
			  self cacheAt: #isDestructor ifAbsent: [ false ] ] ]
]
