tests
testFutureDoesNotTimeoutsAfterSmallerExplicitTimeout

	self
		shouldnt: [(MatraFuture doing: [ 1.9 seconds wait ]) valueTimeout: 2 seconds  ]
		raise: MatraTimeoutException 