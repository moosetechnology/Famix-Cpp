Class {
	#name : #FamixCppEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixCppEntity class >> metamodel [

	<generated>
	^ FamixCppModel metamodel
]

{ #category : #testing }
FamixCppEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isImplicitVariable [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixCppEntity >> isType [

	<generated>
	^ false
]
