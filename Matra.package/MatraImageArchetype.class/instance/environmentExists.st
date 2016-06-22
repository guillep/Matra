testing
environmentExists
	
	^ self imageExists and: [ self vmExists and: [ self sourceFileExists ] ]