running
setUp

	super setUp.
	pharo5 := MatraImageFileManager pharo5Prototype.
	pharo5 location: FileLocator temp / 'matra' / 'testResource' / 'vanilla'.
	pharo5 loadVm.
	pharo5 loadImage.
	pharo5 loadSourceFile.
	seamlessImage := pharo5 cloneIn: FileLocator temp / 'matra' / 'testResource' / 'seamless'.
	seamlessImage loadSeamless.