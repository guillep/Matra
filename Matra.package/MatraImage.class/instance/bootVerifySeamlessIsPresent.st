loading
bootVerifySeamlessIsPresent

	self assert: 'SeamlessNetwork' = (self callImageWithArgument: { 
		'eval' .
		'SeamlessNetwork' }) trimBoth.