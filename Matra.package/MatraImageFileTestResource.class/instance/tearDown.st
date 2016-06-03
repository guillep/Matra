running
tearDown

	super tearDown.
	[pharo5 clean] ifError: [ ].
	[seamlessImage clean] ifError: [ ].