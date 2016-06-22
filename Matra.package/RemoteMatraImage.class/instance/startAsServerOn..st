start-stop
startAsServerOn: aPort
	
	archetype ensureEnvironment.
	archetype bootVerifySeamlessIsPresent.

	^ self startDoing: {
		'eval' . '--no-quit' . ('SeamlessNetwork new startServerOn: ', aPort asString) }