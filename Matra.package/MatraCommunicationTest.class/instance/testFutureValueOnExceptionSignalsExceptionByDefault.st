tests
testFutureValueOnExceptionSignalsExceptionByDefault

	self should: [(MatraFuture doing: [ Error signal ]) value] raise: Error