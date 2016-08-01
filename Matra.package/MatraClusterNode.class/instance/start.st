starting
start
	
	[ [ self anySeedIsReachable ] whileFalse: [ 
		seeds do: #tryConnection.
		1 second wait ] ] fork