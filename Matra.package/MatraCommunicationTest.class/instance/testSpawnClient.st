tests
testSpawnClient

	localImage := MatraImage newCurrent.
	localImage startServerOn: 8081.
	
	clientImage := localImage archetype clone startClientOf: localImage.
	self assert: clientImage isConnected.