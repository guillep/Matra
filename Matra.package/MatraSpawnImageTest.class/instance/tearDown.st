running
tearDown

	super tearDown.

	[prototype kill] ifError: [].
	[prototype clean] ifError: [].
	
	cloned ifNotNil: [ 
		[cloned kill] ifError: [  ].
		[cloned clean] ifError: [  ] ]