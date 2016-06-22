spawning
startServerOn: aPort
	
	self bootVerifySeamlessIsPresent.
	^ self spawnDoing: {
		'eval' . '--no-quit' . ('SeamlessNetwork new startServerOn: ', aPort asString) }