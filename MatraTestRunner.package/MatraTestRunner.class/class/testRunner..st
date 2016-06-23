running
testRunner: currentMatra

	"^ MatraLocalTestRunner"
	^ (MatraFuture doing: [ | child |
		'lala' logCr.
			child := currentMatra archetype clone startClientOf: currentMatra.
			self assert: child isConnected.
			child]) value
				get: #MatraLocalTestRunner