tests
testRemoteMatraImageIsAlive

	| image |
	image := MatraArchetype newCurrent clone spawn.
	self assert: image isAlive.