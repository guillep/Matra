initialization
schedule: aTask

	| future |
	future := MatraFuture new.
	futureDictionary at: aTask put: future.
	taskQueue nextPut: aTask.
	^ future