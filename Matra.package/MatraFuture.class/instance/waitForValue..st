accessing
waitForValue: aTimeout

	self isFinished ifFalse: [ | expired |
		expired := valueSemaphore waitTimeoutMSecs: aTimeout asMilliSeconds.
		expired ifTrue: [ self deployResult: timeoutCallback value ]]