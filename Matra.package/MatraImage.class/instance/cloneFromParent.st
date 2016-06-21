cloning
cloneFromParent
	
	parentImage imageExists ifTrue: [ loader loadImage ].
	parentImage sourceFileExists ifTrue: [ loader loadSourceFile ].
	parentImage vmExists ifTrue: [ loader loadVm ].
	"parentImage location exists ifFalse: [ ^ self ].
	parentImage location copyAllTo: location"