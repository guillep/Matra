tests
testImageCopyDoesCopyLoader

	| process prototypeCopy |
	prototype spawn.
	
	process := prototype process.
	prototypeCopy := prototype copy.

	self assert: prototype loader matraImage == prototype.
	self assert: prototypeCopy loader matraImage == prototypeCopy.