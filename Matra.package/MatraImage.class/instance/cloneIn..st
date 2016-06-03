cloning
cloneIn: aDestinyLocation
	
	^ (MatraImage
		on: aDestinyLocation
		version: version
		vmVersion: vmVersion)
		parent: self;
		cloneFromParent;
		yourself