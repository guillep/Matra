cloning
basicCloneIn: aDestination

	^ (MatraArchetype
		on: aDestination
		version: imageVersion
		vmVersion: vmVersion)
		parent: self;
		yourself