accessing
pharo5Prototype
	
	^ (MatraArchetype
		on: self pharo5PrototypeLocation
		version: 50
		vmVersion: 'pharo')
			yourself