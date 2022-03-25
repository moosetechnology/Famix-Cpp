Class {
	#name : #FamixCppAttribute,
	#superclass : #FamixCppNamedEntity,
	#traits : 'FamixTAttribute + FamixTInvocationsReceiver',
	#classTraits : 'FamixTAttribute classTrait + FamixTInvocationsReceiver classTrait',
	#category : #'Famix-Cpp-Entities-Entities'
}

{ #category : #meta }
FamixCppAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixCppNamedEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^self
]
