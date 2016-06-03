tests
testCloneImageWithImageFileClonesImageFile

	| clonedLocation |
	prototype loadImage.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	cloned := prototype cloneIn: FileLocator temp / 'matra' / 'cloned'.
	
	self assert: prototype imageExists equals: cloned imageExists.