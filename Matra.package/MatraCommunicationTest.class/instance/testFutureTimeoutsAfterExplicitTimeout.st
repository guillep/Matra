tests
testFutureTimeoutsAfterExplicitTimeout

	self
		should: [(MatraFuture doing: [ 2.1 seconds wait ]) valueTimeout: 2 seconds  ]
		raise: MatraTimeoutException 