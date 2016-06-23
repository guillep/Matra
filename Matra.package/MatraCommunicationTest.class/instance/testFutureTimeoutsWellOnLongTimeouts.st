tests
testFutureTimeoutsWellOnLongTimeouts

	self
		should: [(MatraFuture doing: [ 31 seconds wait ]) valueTimeout: 30 seconds  ]
		raise: MatraTimeoutException 