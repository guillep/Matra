initialization
initialize

	super initialize.
	result := nil.
	valueSemaphore := Semaphore new.
	timeoutMicroseconds := self class defaultTimeout.
	timeoutCallback := [ MatraTimeoutException signal ].
	exceptionCallback := [ :e | e pass ].
	resultCallbacks := OrderedCollection new.