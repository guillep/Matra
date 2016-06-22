tests
testClonedImageWithExplicitLocationHasClonedLocation

	| clonedLocation |
	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	clonedArchetype := prototypeArchetype cloneIn: clonedLocation.
	
	self assert: clonedArchetype location equals: clonedLocation.