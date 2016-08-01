actions
installConfigurationOf: name fromRepository: repository version: version 
	
	OSSUnixSubprocess new
		command: self vmBinary fullNameWithIndicator; 
		arguments: {
			'--nodisplay' . 
			self imageFile fullNameWithIndicator . 
			'config' .
			repository .
			'ConfigurationOf', name . 
			'--install=', version };
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString | ^ outString ].