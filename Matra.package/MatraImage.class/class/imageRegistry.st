finalization
imageRegistry

	^ Registry ifNil: [ Registry := WeakRegistry new ]