tests
testImagePoolWithZeroImagesDoesNotExecuteProcessCreationBlock

	| pool |
	pool := MatraImagePool new poolSize: 0; processCreationBlock: [ :queue | self fail ]; yourself.
	pool start.