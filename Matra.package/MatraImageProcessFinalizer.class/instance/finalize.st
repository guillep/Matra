finalization
finalize

	process isRunning ifTrue: [ [process kill] ifError: [  ] ]