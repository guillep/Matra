initialization
initialize

	super initialize.
	taskQueue := AtomicSharedQueue new.
	futureDictionary := WeakKeyDictionary new.
	imageProcesses := Set new.