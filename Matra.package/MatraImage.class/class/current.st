current
current
	
	^ Current ifNil: [ 
		Current := self newCurrent ]