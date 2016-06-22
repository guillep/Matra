tests
testSpawnMakesItRun

	| image |
	image := prototypeArchetype spawn.
	1 second wait.
	self assert: image isAlive