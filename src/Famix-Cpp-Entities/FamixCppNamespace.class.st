"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `parentNamespace` | `FamixCppNamespace` | `childrenNamespaces` | `FamixCppNamespace` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNamespaces` | `FamixCppNamespace` | `parentNamespace` | `FamixCppNamespace` | |



"
Class {
	#name : 'FamixCppNamespace',
	#superclass : 'FamixCContainerEntity',
	#instVars : [
		'#childrenNamespaces => FMMany type: #FamixCppNamespace opposite: #parentNamespace',
		'#parentNamespace => FMOne type: #FamixCppNamespace opposite: #childrenNamespaces'
	],
	#category : 'Famix-Cpp-Entities-Entities',
	#package : 'Famix-Cpp-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixCppNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixCContainerEntity>
	<package: #'Famix-Cpp-Entities'>
	<generated>
	^ self
]

{ #category : 'adding' }
FamixCppNamespace >> addChildrenNamespace: anObject [
	<generated>
	^ self childrenNamespaces add: anObject
]

{ #category : 'accessing' }
FamixCppNamespace >> childrenNamespaces [
	"Relation named: #childrenNamespaces type: #FamixCppNamespace opposite: #parentNamespace"

	<generated>
	<derived>
	^ childrenNamespaces
]

{ #category : 'accessing' }
FamixCppNamespace >> childrenNamespaces: anObject [

	<generated>
	childrenNamespaces value: anObject
]

{ #category : 'navigation' }
FamixCppNamespace >> childrenNamespacesGroup [
	<generated>
	<navigation: 'ChildrenNamespaces'>
	^ MooseSpecializedGroup withAll: self childrenNamespaces asSet
]

{ #category : 'accessing' }
FamixCppNamespace >> parentNamespace [
	"Relation named: #parentNamespace type: #FamixCppNamespace opposite: #childrenNamespaces"

	<generated>
	<container>
	^ parentNamespace
]

{ #category : 'accessing' }
FamixCppNamespace >> parentNamespace: anObject [

	<generated>
	parentNamespace := anObject
]

{ #category : 'navigation' }
FamixCppNamespace >> parentNamespaceGroup [
	<generated>
	<navigation: 'ParentNamespace'>
	^ MooseSpecializedGroup with: self parentNamespace
]
