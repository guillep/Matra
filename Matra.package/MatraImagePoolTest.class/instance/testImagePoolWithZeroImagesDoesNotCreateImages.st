tests
testImagePoolWithZeroImagesDoesNotCreateImages

	| pool |
	pool := MatraImagePool new poolSize: 0; yourself.
	pool start.
	
	self assert: pool aliveProcesses size equals: 0 