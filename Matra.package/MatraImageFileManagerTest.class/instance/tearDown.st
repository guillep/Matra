running
tearDown

	super tearDown.
	prototype kill.
	prototype clean.
	
	cloned ifNotNil: [ cloned kill; clean ]