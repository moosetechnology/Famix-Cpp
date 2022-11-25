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
		self xmlParser: spec.

		spec
			package: 'Famix-CPreproc-Generator';
			package: 'Famix-CPreproc-Entities';
			package: 'Famix-C-Generator';
			package: 'Famix-C-Entities'
			with: [ spec requires: #( 'Famix-CPreproc-Entities' ) ];
			package: 'Famix-Cpp-Generator';
			package: 'Famix-Cpp-Entities'
			with: [ 
				spec requires: #( 'Famix-CPreproc-Entities'
					   'Famix-C-Entities' ) ];
			package: 'Famix-Cpp-Entities-Tests'
			with: [ spec requires: #( 'Famix-Cpp-Entities' ) ];
			package: 'Famix-Cpp-Parser'
			with: [ spec requires: #( 'PetitParser2Core' ) ];
			package: 'Famix-Cpp-Parser-Tests'
			with: [ spec requires: #( 'Famix-Cpp-Parser' ) ];
			package: 'Famix-CPreproc-Importer'
			with: [ spec requires: #( 'Famix-CPreproc-Entities' 'XMLParser' ) ];
			package: 'Famix-CPreproc-Importer-Tests'
			with: [ spec requires: #( 'Famix-CPreproc-Importer' ) ] ]
]

{ #category : #dependencies }
BaselineOfFamixCpp >> petitParser2: spec [

	spec
		baseline: 'PetitParser2Core'
		with: [ spec repository: 'github://kursjan/petitparser2' ]
]

{ #category : #dependencies }
BaselineOfFamixCpp >> xmlParser: spec [

	spec
		baseline: 'XMLParser'
		with: [ 
		spec repository: 'github://pharo-contributions/XML-XMLParser/src' ]
]
