tests
testCloneImageWithVMClonesVM

	| clonedLocation |
	prototype loadVm.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	cloned := prototype cloneIn: clonedLocation.
	
	self assert: prototype vmExists equals: cloned vmExists.