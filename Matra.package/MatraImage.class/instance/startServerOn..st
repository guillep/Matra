spawning
startServerOn: aPort
	
	self bootVerifySeamlessIsPresent.
	self spawnDoing: {
		'eval'. ('SeamlessNetwork new startServerOn: ', aPort asString) }