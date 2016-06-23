tests
testDefaultFutureTimeoutIsOneSecond

	self should: [(MatraFuture doing: [ 1.1 seconds wait ]) value] raise: MatraTimeoutException 