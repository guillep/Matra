tests
testGCKillsImage

	| process |
	prototype spawn.
	
	process := prototype process.
	prototype := nil.

	Smalltalk garbageCollect.
	1 second wait.
	self deny: process isRunning.