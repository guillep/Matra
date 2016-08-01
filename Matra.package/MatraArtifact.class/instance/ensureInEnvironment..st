deployment
ensureInEnvironment: anEnvironment

	dependencies do: [ :dep | dep ensureInEnvironment: anEnvironment ].
	(self isDeployedInEnvironment: anEnvironment) ifFalse: [ 
		self deployIn: anEnvironment ]