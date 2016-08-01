actions
eval: aString 
	
	OSSUnixSubprocess new
		command: self vmBinary fullNameWithIndicator; 
		arguments: {
			'--nodisplay' . 
			self imageFile fullNameWithIndicator . 
			'eval' .
			aString };
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString | ^ outString ].