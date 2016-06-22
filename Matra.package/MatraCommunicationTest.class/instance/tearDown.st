running
tearDown
	super tearDown.
	localImage ifNotNil: #stopServer.
	clientImage ifNotNil: #kill.
	Smalltalk garbageCollect.