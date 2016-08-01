deployment
isDeployedInEnvironment: aMatraEnvironment 
	 
	| configurationName out |
	configurationName := 'ConfigurationOf', name.
	out := aMatraEnvironment eval: configurationName.
	
	^ out = configurationName