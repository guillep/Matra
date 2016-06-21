current
current
	
	^ Current ifNil: [ 
		Current := self newCurrent
			imageFile: FileLocator image;
			vmBinary: FileLocator vmBinary ]