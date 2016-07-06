tests
testImagePoolExecutesProcessCreationBlockAsMuchAsPoolSize: poolSize

	| pool i semaphore finished |
	i := 0.
	semaphore := Semaphore forMutualExclusion.
	finished := Semaphore new.
	pool := MatraImagePool new
		poolSize: poolSize;
		processCreationBlock: [ :queue | 
			semaphore critical: [ i := i + 1 ].
			finished signal. ];
		yourself.
	pool start.
	
	1 to: poolSize do: [ :x | finished wait ].
	self assert: i equals: poolSize