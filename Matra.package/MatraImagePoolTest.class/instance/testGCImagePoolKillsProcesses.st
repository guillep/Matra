tests
testGCImagePoolKillsProcesses

	| pool processes |
	pool := MatraImagePool new
		poolSize: 5;
		processCreationBlock: [ :queue | 
			[ true ] whileTrue: [ 2 seconds wait ] ];
		yourself.
	pool start.
	
	processes := pool aliveProcesses.
	
	pool := nil.
	Smalltalk garbageCollect.
	
	self assert: (processes allSatisfy: #isTerminated).