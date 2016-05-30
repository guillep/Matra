accessing
pharo5Prototype
	
	^ (MatraImage
		on: self pharo5PrototypeLocation
		version: 50
		vmVersion: 'pharo')
			yourself