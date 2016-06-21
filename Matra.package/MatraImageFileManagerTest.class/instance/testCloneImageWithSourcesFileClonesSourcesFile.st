tests
testCloneImageWithSourcesFileClonesSourcesFile

	| clonedLocation |
	prototype loadSourceFile.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	cloned := prototype cloneIn: clonedLocation.
	
	self assert: prototype sourceFileExists equals: cloned sourceFileExists.