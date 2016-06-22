tests
testCloneImageWithImageFileClonesChangesFile

	| clonedLocation |
	prototypeArchetype loadImage.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	clonedArchetype := prototypeArchetype cloneIn: clonedLocation.
	
	self assert: prototypeArchetype changesFileExists equals: clonedArchetype changesFileExists.