tests
testImagePoolKilledProcessesAreNotAlive

	| pool |
	pool := MatraImagePool new
		poolSize: 5;
		processCreationBlock: [ :queue | 
			[ true ] whileTrue: [ 2 seconds wait ] ];
		yourself.
	pool start.
	
	pool stop.
	self assert: pool aliveProcesses isEmpty