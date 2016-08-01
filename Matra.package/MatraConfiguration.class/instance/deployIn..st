deployment
deployIn: aMatraEnvironment

	self halt.
	aMatraEnvironment
		installConfigurationOf: name
		fromRepository: repository
		version: version