"
A CPPSMethodTest is a test class for testing the behavior of CPPSMethod
"
Class {
	#name : #FamixCppMethodTest,
	#superclass : #TestCase,
	#category : #'Famix-Cpp-Entities-Tests-Entities'
}

{ #category : #tests }
FamixCppMethodTest >> testIsConstructor [
	| meth1 meth2 |
	meth1 := FamixCppMethod named: 'TestConstructor'.
	meth1 parentType: (FamixCppType named: 'TestConstructor').
	meth2 := FamixCppMethod named: 'testNotConstructor'.
	meth2 parentType: (FamixCppType named: 'aClass').

	self assert: meth1 isConstructor.
	self deny: meth2 isConstructor
]

{ #category : #tests }
FamixCppMethodTest >> testIsDestructor [
	| meth1 meth2 |
	meth1 := FamixCppMethod named: '~TestDestructor'.
	meth1 parentType: (FamixCppType named: 'TestDestructor').
	meth2 := FamixCppMethod named: 'testNotDestructor'.
	meth2 parentType: (FamixCppType named: 'aClass').

	self assert: meth1 isDestructor.
	self deny: meth2 isDestructor
]
