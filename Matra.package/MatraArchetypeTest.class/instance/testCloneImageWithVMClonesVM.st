tests
testCloneImageWithVMClonesVM

	| clonedLocation |
	prototypeArchetype loadVm.

	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	clonedArchetype := prototypeArchetype cloneIn: clonedLocation.
	
	self assert: prototypeArchetype vmExists equals: clonedArchetype vmExists.