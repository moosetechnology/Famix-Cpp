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
		self petitParser: spec.
		self petitParser2: spec.
		spec 
			package: 'Famix-Cpp-Generator';
			package: 'Famix-Cpp-Entities';
			package: 'Famix-Cpp-Entities-Tests';
			package: 'Famix-Cpp-Parser' 
				with: [ spec requires: #('PetitParser2Core' 'PetitParser') ];
			package: 'Famix-Cpp-Parser-Tests'
				with: [ spec requires: #('Famix-Cpp-Parser') ].
		 ].
]

{ #category : #dependencies }
BaselineOfFamixCpp >> petitParser2: spec [
	spec baseline: 'PetitParser2Core' with: [ spec repository: 'github://kursjan/petitparser2' ]
]

{ #category : #dependencies }
BaselineOfFamixCpp >> petitParser: spec [
	spec baseline: 'PetitParser' with: [ 
		spec
			loads: #('Core' 'Preprocessor');
			repository: 'github://moosetechnology/PetitParser:v2.x.x/src' ]
]
