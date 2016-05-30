loading
bootVerifySeamlessIsPresent

	self assert: 'SeamlessDeamon' = (self callImageWithArgument: { 
		'eval' .
		'SeamlessDeamon' }) trimBoth.