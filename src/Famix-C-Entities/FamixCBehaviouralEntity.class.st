Class {
	#name : #FamixCBehaviouralEntity,
	#superclass : #FamixCContainerEntity,
	#traits : 'FamixTInvocable + FamixTWithAccesses + FamixTWithInvocations + FamixTWithStatements',
	#classTraits : 'FamixTInvocable classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithStatements classTrait',
	#category : #'Famix-C-Entities-Entities'
}

{ #category : #meta }
FamixCBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FamixCContainerEntity>
	<package: #'Famix-C-Entities'>
	<generated>
	^self
]
