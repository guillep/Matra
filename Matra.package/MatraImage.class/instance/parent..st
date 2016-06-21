accessing
parent: aMatraImage 
	
	parentImage := aMatraImage.
	self loader: (MatraFileCopyLoader new prototypeImage: parentImage; yourself).