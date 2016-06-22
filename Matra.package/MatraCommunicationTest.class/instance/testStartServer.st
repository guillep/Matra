tests
testStartServer

	| remoteSmalltalk clientSideNetwork |
	prototypeArchetype load.
	clientImage := prototypeArchetype startServerOn: 8081.
	
	3 seconds wait. "that the image starts properly and starts listening"
	
	clientSideNetwork := SeamlessNetwork new.
	remoteSmalltalk := clientSideNetwork environmentAt: (TCPAddress localAt: 8081).

	self assert: remoteSmalltalk vm path equals: prototypeArchetype vmDirectory fullNameWithIndicator