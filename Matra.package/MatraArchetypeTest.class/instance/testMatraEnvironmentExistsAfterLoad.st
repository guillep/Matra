tests
testMatraEnvironmentExistsAfterLoad

	prototypeArchetype load.
	
	self assert: (prototypeArchetype environmentExists)