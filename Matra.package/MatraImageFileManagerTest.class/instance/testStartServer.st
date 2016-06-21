tests
testStartServer

	| remoteSmalltalk clientSideNetwork |
	prototype load.
	prototype startServerOn: 8081.
	
	'waiting for the image to start' logCr.
	Time now logCr.
	5 seconds wait. "that the image starts properly and starts listening"
	Time now logCr.
	
	clientSideNetwork := SeamlessNetwork new.
	remoteSmalltalk := clientSideNetwork environmentAt: (TCPAddress ip: #[0 0 0 0] port: 8081).

	self assert: remoteSmalltalk vm path equals: prototype vmDirectory fullNameWithIndicator