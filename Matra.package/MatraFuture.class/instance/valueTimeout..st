accessing
valueTimeout: aTimeout

	self waitForValue: aTimeout.
	^ result valueForFuture: self