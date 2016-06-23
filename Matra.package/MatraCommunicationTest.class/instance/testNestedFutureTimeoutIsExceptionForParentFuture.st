tests
testNestedFutureTimeoutIsExceptionForParentFuture

	self
		should: [(MatraFuture doing: [ (MatraFuture doing: [ 1 second wait ]) waitForValue: 0.1 second ]) value]
		raise: MatraTimeoutException