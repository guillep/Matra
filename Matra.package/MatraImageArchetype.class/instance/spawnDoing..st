spawning
spawnDoing: arguments
	
	self ensureEnvironment.
	
	^ RemoteMatraImage new
		archetype: self;
		arguments: arguments;
		start;
		yourself