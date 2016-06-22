tests
testRemoteMatraImageIsAlive

	| image |
	image := MatraImageArchetype newCurrent clone spawn.
	self assert: image isAlive.