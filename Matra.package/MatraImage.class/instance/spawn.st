spawning
spawn
	
	self ensureEnvironment.
	
	self assert: self isRunning not.
	process := OSSUnixSubprocess new
		command: self vmExecutableFileName fullNameWithIndicator; 
		arguments: {self imageFile fullNameWithIndicator};
		run.
		
	self class registerForFinalization: self.