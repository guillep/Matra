tests
testSpawnClient

	| client |
	
	localImage := MatraImage newCurrent.
	localImage startServerOn: 8081.
	
	client := localImage archetype clone startClientOf: localImage.
	self deny: client isConnected.
	5 seconds wait.
	self assert: client isConnected.