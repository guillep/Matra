spawning
startSeamlessOn: aPort
	
	self callImageWithArgument: {
		'eval'. ('SeamlessDeamon newDefaultWithGlobalAccess startOn: ', aPort asString) }