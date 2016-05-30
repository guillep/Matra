tests
testMatraEnvironmentExistsAfterLoad

	prototype load.
	
	self assert: (prototype environmentExists)