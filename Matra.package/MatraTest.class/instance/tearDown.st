running
tearDown

	super tearDown.

	[prototypeArchetype clean] ifError: [].
	
	[clonedArchetype clean] ifError: [  ]