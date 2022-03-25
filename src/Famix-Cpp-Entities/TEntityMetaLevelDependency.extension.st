Extension { #name : #TEntityMetaLevelDependency }

{ #category : #'*Famix-Cpp-Entities' }
TEntityMetaLevelDependency >> sortedChildrenByPriority [
	^ self children sorted: [ :child1 :child2 | child1 hasPriorityOn: child2 ]
]
