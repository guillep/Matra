tests
testFutureOfLessThanDefaultTimeoutDoesNotTimeout

	self
		shouldnt: [(MatraFuture doing: [ (MatraFuture defaultTimeout * 0.9) wait ]) value ]
		raise: MatraTimeoutException 