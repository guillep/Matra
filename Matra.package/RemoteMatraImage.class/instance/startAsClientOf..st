start-stop
startAsClientOf: anImage
	
	archetype ensureEnvironment.
	archetype bootVerifySeamlessIsPresent.

	^ self startDoing: {
		'eval' . '--no-quit' . 
		('((SeamlessNetwork new
	environmentAt: (TCPAddress ip: {ip} port: {port}))
		at: #MatraHandshakeRegistry)
			registerRemoteImage: MatraImage newCurrent uuid: ''{token}''' format: {
				'ip' -> anImage ip printString.
				'port' -> anImage port asString.
				'token' -> uuid asString
		} asDictionary ) }