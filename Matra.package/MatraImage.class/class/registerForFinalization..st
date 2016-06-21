finalization
registerForFinalization: anImage

	self imageRegistry
		add: anImage
		executor: (ObjectFinalizer
			receiver: anImage process
			selector: #kill)