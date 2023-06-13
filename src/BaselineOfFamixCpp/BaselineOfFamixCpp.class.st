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
		self xmlParserHtml: spec.

		spec
			package: 'Famix-CPreproc-Generator';
			package: 'Famix-CPreproc-Entities';
			
			package: 'Famix-C-Generator';
			package: 'Famix-C-Entities'
			with: [ spec requires: #( 'Famix-CPreproc-Entities' ) ];
			
			package: 'Famix-Cpp-Generator';
			package: 'Famix-Cpp-Entities'
			with: [ spec requires: #( 'Famix-CPreproc-Entities' 'Famix-C-Entities' ) ];
			package: 'Famix-Cpp-Entities-Tests'
			with: [ spec requires: #( 'Famix-Cpp-Entities' ) ];
			
			package: 'Famix-Cpp-Parser'
			with: [ spec requires: #( 'PetitParser2Core' ) ];
			package: 'Famix-Cpp-Parser-Tests'
			with: [ spec requires: #( 'Famix-Cpp-Parser' ) ];
			
			package: 'Famix-CPreproc-Importer'
			with: [ spec requires: #( 'Famix-CPreproc-Entities' XMLParserHTML ) ];
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
BaselineOfFamixCpp >> xmlParserHtml: spec [

	spec baseline: 'XMLParserHTML' with: [
		spec
			loads: #( 'Core' );
			repository: 'github://pharo-contributions/XML-XMLParserHTML/src' ]
]
