tests
testSpawnClient

	localImage := MatraImage newCurrent.
	localImage startServerOn: 8081.
	
	clientImage := localImage archetype clone startClientOf: localImage.
	self deny: clientImage isConnected.
	5 seconds wait.
	self assert: clientImage isConnected.