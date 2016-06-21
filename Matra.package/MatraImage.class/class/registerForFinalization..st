finalization
registerForFinalization: anImage

	self imageRegistry
		add: anImage
		executor: (MatraImageProcessFinalizer new
			process: anImage process)