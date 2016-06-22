tests
testStartLocalServer

	| remoteSmalltalk clientSideNetwork localImage |
	
	localImage := MatraImage newCurrent.
	localImage startServerOn: 8081.
	
	clientSideNetwork := SeamlessNetwork new.
	remoteSmalltalk := clientSideNetwork environmentAt: (TCPAddress localAt: 8081).

	self assert: remoteSmalltalk vm path equals: localImage archetype vmDirectory fullNameWithIndicator