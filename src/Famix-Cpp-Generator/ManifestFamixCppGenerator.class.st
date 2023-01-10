"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestFamixCppGenerator,
	#superclass : #PackageManifest,
	#category : #'Famix-Cpp-Generator-Manifest'
}

{ #category : #'code-critics' }
ManifestFamixCppGenerator class >> ruleLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#FamixCppGenerator #defineHierarchy #false)) #'2023-01-08T09:44:11.033752+01:00') )
]
