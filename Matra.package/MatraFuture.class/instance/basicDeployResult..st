deployment
basicDeployResult: aValue

	result := MatraFutureValue new value: aValue.
	resultCallbacks do: [ :each | each value: aValue ].
	valueSemaphore signal.