cloning
cloneIn: aDestination

	^ (self basicCloneIn: aDestination)
		cloneFromParent;
		yourself