running
runTests
	| numberOfGroups total groups currentMatra futures |
	[ numberOfGroups := 20.
	total := $A to: $Z.
	groups := (total
		groupedBy:
			[ :c | (c asciiValue // (total size / numberOfGroups)) ])
		values.
	currentMatra := MatraImage newCurrent.
	currentMatra startServerOn: 49587.
	futures := groups
		collect: [ :each | 
			MatraFuture
				doing: [ (self testRunner: currentMatra) runTestsStartingWith: each ] ].
	^ futures collect: [:each |
		each
			onTimeoutDo: [ 'timeout' ];
			valueTimeout: 30 seconds.
		] ] ensure: [ currentMatra ifNotNil: #stopServer ]