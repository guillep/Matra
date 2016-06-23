as yet unclassified
runTestsStartingWith: letters

	| localLetters testCases suite |
	localLetters := letters asLocalObject.
	testCases := TestCase allSubInstances select: [ :each | letters include: each name first ].
	suite := TestSuite new.
	testCases do: [ :each | suite addTest: each buildSuiteFromSelectors ].
	^ suite run