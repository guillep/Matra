tests
testGCKillsImage

	| process image |
	<expectedFailure>
	image := prototypeArchetype spawn.
	
	process := image process.
	image := nil.

	Smalltalk garbageCollect.
	1 second wait.
	self deny: process isRunning.