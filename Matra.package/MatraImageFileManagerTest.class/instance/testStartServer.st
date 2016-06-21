tests
testStartServer

	| remoteSmalltalk clientSideNetwork |
	prototype load.
	prototype startServerOn: 8081.
	
	5 seconds wait. "that the image starts properly and starts listening"
	
	clientSideNetwork := SeamlessNetwork new.
	remoteSmalltalk := clientSideNetwork environmentAt: (TCPAddress localAt: 8081).

	self assert: remoteSmalltalk vm path equals: prototype vmDirectory fullNameWithIndicator