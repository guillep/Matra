loading
loadVm
	
	| vmDirectory vmBinary newBinaryReference |
	vmDirectory := (self copy: prototypeImage vmDirectory to: self vmDirectory).	
	
	newBinaryReference := (AbsolutePath withAll: self vmDirectory asAbsolute pathSegments, 
		(prototypeImage vmBinary relativeTo: prototypeImage vmDirectory)) asFileReference.
	
	OSSUnixSubprocess new
		command: 'chmod';
		arguments: {'+x' . newBinaryReference fullNameWithIndicator};
		runAndWait.

	image vmBinary: newBinaryReference