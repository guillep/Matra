running
testRunner: currentMatra

	^ ((MatraFuture doing: [ | child |
			child := currentMatra archetype clone startClientOf: currentMatra.
			self assert: child isConnected.
			FileStream stdout nextPutAll: 'child connected'; cr.
			child]) valueTimeout: 30 seconds)
				get: #MatraLocalTestRunner