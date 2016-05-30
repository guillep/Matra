loading
callImageWithArgument: aCollection 
	
	OSSUnixSubprocess new
		command: self vmExecutableFileName fullNameWithIndicator; 
		arguments: {'--nodisplay' . 
			self imageFile fullNameWithIndicator}, aCollection;
		redirectStdout;
	    runAndWaitOnExitDo: [ :command :outString | ^ outString ].