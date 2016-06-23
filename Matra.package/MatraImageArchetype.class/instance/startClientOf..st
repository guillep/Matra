spawning
startClientOf: anImage
	
	^ (MatraFuture doing: [ | child clientConnection |
		child := self newImage.
		clientConnection := MatraFuture new.
		MatraRegistry registerFuture: clientConnection at: child uuid .
		child startAsClientOf: anImage.
		child remoteProxy: clientConnection value.
		child
	]) value