Extension { #name : #Object }

{ #category : #'*Famix-Cpp-Entities' }
Object >> isCPPSBlock [
	^ false

]

{ #category : #'*Famix-Cpp-Entities' }
Object >> isExistingMetricFor: anEntity [
	^ self ~= anEntity notExistentMetricValue
]
