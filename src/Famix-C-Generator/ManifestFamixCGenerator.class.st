"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestFamixCGenerator,
	#superclass : #PackageManifest,
	#category : #'Famix-C-Generator-Manifest'
}

{ #category : #'code-critics' }
ManifestFamixCGenerator class >> ruleLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#FamixCGenerator #defineHierarchy #false)) #'2023-01-06T14:56:05.778703+01:00') #(#(#RGClassDefinition #(#FamixCGenerator)) #'2023-01-06T15:01:56.489101+01:00') )
]
