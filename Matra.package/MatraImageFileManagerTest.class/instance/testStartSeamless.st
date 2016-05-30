tests
testStartSeamless

	| remoteSmalltalk |
	prototype load.
	prototype startSeamlessOn: 8081.
	
	remoteSmalltalk := Smalltalk from: '127.0.0.1:8081'.

	self assert: remoteSmalltalk vm path == prototype vmDirectory fullNameWithIndicator