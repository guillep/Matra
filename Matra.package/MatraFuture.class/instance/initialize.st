initialization
initialize

	super initialize.
	result := nil.
	valueSemaphore := Semaphore new.
	timeoutMicroseconds := self class defaultTimeout.
	timeoutCallback := [ MatraTimeoutException signal ]