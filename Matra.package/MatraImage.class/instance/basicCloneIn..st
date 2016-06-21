cloning
basicCloneIn: aDestination

	^ (MatraImage
		on: aDestination
		version: version
		vmVersion: vmVersion)
		parent: self;
		yourself