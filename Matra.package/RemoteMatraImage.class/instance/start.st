start-stop
start
	
	self assert: self isAlive not.
	
	process := OSSUnixSubprocess new
		command: archetype vmBinary fullNameWithIndicator; 
		arguments: { '--nodisplay' . archetype imageFile fullNameWithIndicator}, arguments;
		run.
	
	MatraRegistry registerImage: self.
	self class registerForFinalization: self.