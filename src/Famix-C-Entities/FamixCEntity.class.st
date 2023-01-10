Class {
	#name : #FamixCEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixCEntity class >> metamodel [

	<generated>
	^ FamixCModel metamodel
]

{ #category : #testing }
FamixCEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isLocalVariable [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isPrimitiveType [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixCEntity >> isType [

	<generated>
	^ false
]
