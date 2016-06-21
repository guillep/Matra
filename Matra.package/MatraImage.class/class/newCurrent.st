current
newCurrent
	
	^ self new
		location: FileLocator workingDirectory;
		version: SystemVersion current major asString, SystemVersion current minor asString;
		sourceVersion: (SystemVersion current major - 1) asString, SystemVersion current minor asString;
		imageFile: FileLocator image;
		vmBinary: FileLocator vmBinary;
		sourceFile: Smalltalk sourcesName asFileReference.