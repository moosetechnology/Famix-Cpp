"
Baseline of cpps
"
Class {
	#name : #BaselineOfFamixCpp,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixCpp
}

{ #category : #baselines }
BaselineOfFamixCpp >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		self petitParser2: spec.
		spec
			package: 'Famix-Cpp-Generator';
			package: 'Famix-Cpp-Entities';
			package: 'Famix-Cpp-Entities-Tests';
			package: 'Famix-Cpp-Parser'
			with: [ spec requires: #( 'PetitParser2Core' ) ];
			package: 'Famix-Cpp-Parser-Tests'
			with: [ spec requires: #( 'Famix-Cpp-Parser' ) ] ]
]

{ #category : #dependencies }
BaselineOfFamixCpp >> petitParser2: spec [
	spec baseline: 'PetitParser2Core' with: [ spec repository: 'github://kursjan/petitparser2' ]
]
