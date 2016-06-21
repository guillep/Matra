tests
testCloneImageWithImageFileClonesImageFile

	| clonedLocation |
	prototype loadImage.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	cloned := prototype cloneIn: clonedLocation.
	
	self assert: prototype imageExists equals: cloned imageExists.