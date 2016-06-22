cloning
basicCloneIn: aDestination

	^ (MatraImageArchetype
		on: aDestination
		version: imageVersion
		vmVersion: vmVersion)
		parent: self;
		yourself