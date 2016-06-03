tests
testCloneImageWithVMClonesVM

	| clonedLocation |
	prototype loadVm.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	cloned := prototype cloneIn: FileLocator temp / 'matra' / 'cloned'.
	
	self assert: prototype vmExists equals: cloned vmExists.