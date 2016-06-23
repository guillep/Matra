spawning
startClientOf: anImage
	
	^ (MatraFuture doing: [ | child clientConnection |
		child := self newImage.
		clientConnection := MatraFuture new.
		MatraHandshakeRegistry registerFuture: clientConnection at: child uuid.
		child startAsClientOf: anImage.
		child remoteProxy: (clientConnection valueTimeout: 5 seconds).
		child
	]) valueTimeout: 7 seconds