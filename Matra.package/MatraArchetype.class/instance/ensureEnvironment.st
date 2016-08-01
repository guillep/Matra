loading
ensureEnvironment
	
	self environmentExists
		ifFalse: [ self load ]