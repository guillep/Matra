tests
testCloneImageWithSourcesFileClonesSourcesFile

	| clonedLocation |
	prototypeArchetype loadSourceFile.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	clonedArchetype := prototypeArchetype cloneIn: clonedLocation.
	
	self assert: prototypeArchetype sourceFileExists equals: clonedArchetype sourceFileExists.