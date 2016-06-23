accessing
valueTimeout: aTimeout

	self waitForValue: aTimeout.
	^ result value