tests
testTimeoutCallback

	| timedOut |
	timedOut := false.
	(MatraFuture doing: [ 1.1 seconds wait ])
		onTimeoutDo: [ timedOut := true ];
		valueTimeout: 1 second.
		
	self assert: timedOut.