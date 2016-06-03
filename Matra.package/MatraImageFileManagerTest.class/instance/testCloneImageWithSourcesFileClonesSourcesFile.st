tests
testCloneImageWithSourcesFileClonesSourcesFile

	| clonedLocation |
	prototype loadSourceFile.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	cloned := prototype cloneIn: FileLocator temp / 'matra' / 'cloned'.
	
	self assert: prototype sourceFileExists equals: cloned sourceFileExists.