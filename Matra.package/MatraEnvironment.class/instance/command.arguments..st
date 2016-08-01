actions
command: aCommand arguments: arguments
	
	OSSUnixSubprocess new
		command: self vmBinary fullNameWithIndicator; 
		arguments: {
			'--nodisplay' . 
			self imageFile fullNameWithIndicator . 
			aCommand }, arguments;
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString | ^ outString ].