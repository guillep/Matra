tests
testFutureValueOnTimeoutIsTimeoutCallbackValue

	| result |
	result := (MatraFuture doing: [ 1 seconds wait ])
		onTimeoutDo: [ true ];
		valueTimeout: 1 seconds.
	
	self assert: result