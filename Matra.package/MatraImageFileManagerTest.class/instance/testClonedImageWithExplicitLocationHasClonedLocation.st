tests
testClonedImageWithExplicitLocationHasClonedLocation

	| clonedLocation |
	clonedLocation := FileLocator temp / 'matra' / 'cloned'.
	cloned := prototype cloneIn: clonedLocation.
	
	self assert: cloned location equals: clonedLocation.