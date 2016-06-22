accessing
pharo5Prototype
	
	^ (MatraImageArchetype
		on: self pharo5PrototypeLocation
		version: 50
		vmVersion: 'pharo')
			yourself