cloning
cloneFromParent
	
	parentImage location exists ifFalse: [ ^ self ].
	parentImage location copyAllTo: location