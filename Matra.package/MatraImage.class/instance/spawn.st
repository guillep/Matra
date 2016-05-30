spawning
spawn
	
	self ensureEnvironment.
	process := OSSUnixSubprocess new
		command: self vmExecutableFileName fullNameWithIndicator; 
		arguments: {self imageFile fullNameWithIndicator};
		run.