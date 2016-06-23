tests
testFutureValueOnExceptionExecutesOnErrorCallback

	| exception |
	exception := Error new.
	self assert: ((MatraFuture doing: [ exception signal ])
		onExceptionDo: [ :e | e ];
		value) == exception