start-stop
start
	
	self assert: self isAlive not.
	
	MatraRegistry registerImage: self.
	process := OSSUnixSubprocess new
		command: archetype vmBinary fullNameWithIndicator; 
		arguments: { '--nodisplay' . archetype imageFile fullNameWithIndicator}, arguments;
		run.
	
	self class registerForFinalization: self.