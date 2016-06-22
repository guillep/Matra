tests
testCloneImageWithImageFileClonesImageFile

	| clonedLocation |
	prototypeArchetype loadImage.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	clonedArchetype := prototypeArchetype cloneIn: clonedLocation.
	
	self assert: prototypeArchetype imageExists equals: clonedArchetype imageExists.