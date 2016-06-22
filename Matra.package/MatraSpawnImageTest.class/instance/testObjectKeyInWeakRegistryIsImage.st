tests
testObjectKeyInWeakRegistryIsImage

	| image |
	image := prototypeArchetype spawn.	
	self assert: (RemoteMatraImage imageRegistry includes: image)