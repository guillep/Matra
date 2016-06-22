accessing
waitForValue

	self isFinished ifFalse: [ valueSemaphore wait ]