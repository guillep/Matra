spawning
spawnDoing: arguments
	
	self ensureEnvironment.
	
	self assert: self isRunning not.
	process := OSSUnixSubprocess new
		command: self vmExecutableFileName fullNameWithIndicator; 
		arguments: {self imageFile fullNameWithIndicator}, arguments;
		run.
		
	self class registerForFinalization: self.