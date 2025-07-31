"
Baseline of cpps
"
Class {
	#name : 'BaselineOfFamixCpp',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfFamixCpp',
	#package : 'BaselineOfFamixCpp'
}

{ #category : 'baselines' }
BaselineOfFamixCpp >> baseline: spec [

	<baseline>
	spec for: #common do: [
			self petitParser2: spec.
			self xmlParserHtml: spec.

			spec
				package: 'Famix-Preproc-Generator';
				package: 'Famix-Preproc-Traits';
				package: 'Famix-C-Generator';
				package: 'Famix-C-Entities' with: [ spec requires: #( 'Famix-Preproc-Traits' ) ];
				package: 'Famix-Cpp-Generator';
				package: 'Famix-Cpp-Entities' with: [ spec requires: #( 'Famix-C-Entities' ) ];
				package: 'Famix-Cpp-Entities-Tests' with: [ spec requires: #( 'Famix-Cpp-Entities' ) ];
				package: 'Famix-Cpp-Parser' with: [ spec requires: #( 'PetitParser2Core' ) ];
				package: 'Famix-Cpp-Parser-Tests' with: [ spec requires: #( 'Famix-Cpp-Parser' ) ];
				package: 'Famix-CPreproc-Generator';
				package: 'Famix-CPreproc-Entities';
				package: 'Famix-CPreproc-Importer' with: [ spec requires: #( 'Famix-CPreproc-Entities' XMLParserHTML ) ];
				package: 'Famix-CPreproc-Importer-Tests' with: [ spec requires: #( 'Famix-CPreproc-Importer' ) ].

			spec
				group: 'Preprocessing' with: #( 'Famix-Preproc-Generator' 'Famix-Preproc-Traits' );
				group: 'OldPreprocessing' with: #( 'Famix-CPreproc-Generator' 'Famix-CPreproc-Entities' 'Famix-CPreproc-Importer' 'Famix-CPreproc-Importer-Tests' );
				group: 'C' with: #( 'Famix-C-Generator' 'Famix-C-Entities' );
				group: 'Cpp' with: #( 'Famix-Cpp-Generator' 'Famix-Cpp-Entities' 'Famix-Cpp-Entities-Tests' 'Famix-Cpp-Parser' 'Famix-Cpp-Parser-Tests' );
				group: 'All' with: #( 'Preprocessing' 'C' 'Cpp' 'OldPreprocessing' );
				group: 'default' with: #( 'Preprocessing' 'C' 'Cpp' ) ]
]

{ #category : 'dependencies' }
BaselineOfFamixCpp >> petitParser2: spec [

	spec
		baseline: 'PetitParser2Core'
		with: [ spec repository: 'github://kursjan/petitparser2' ]
]

{ #category : 'dependencies' }
BaselineOfFamixCpp >> xmlParserHtml: spec [

	spec baseline: 'XMLParserHTML' with: [
		spec
			loads: #( 'Core' );
			repository: 'github://pharo-contributions/XML-XMLParserHTML/src' ]
]
