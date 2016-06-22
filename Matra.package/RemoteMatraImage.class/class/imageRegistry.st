instance-creation
imageRegistry

	^ Registry ifNil: [ Registry := WeakRegistry new ]