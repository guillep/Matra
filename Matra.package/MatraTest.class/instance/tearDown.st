running
tearDown

	super tearDown.

	[prototypeArchetype kill] ifError: [].
	[prototypeArchetype clean] ifError: [].
	
	clonedArchetype ifNotNil: [ 
		[clonedArchetype kill] ifError: [  ].
		[clonedArchetype clean] ifError: [  ] ]