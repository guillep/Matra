accessing
valueTimeout: aTimeout
	
	timeoutMicroseconds := aTimeout.
	self waitForValue: aTimeout.
	^ result valueForFuture: self