deployment
isDeployedInEnvironment: aMatraEnvironment 
	
	^ (aMatraEnvironment location / 'Pharo.image') exists
		and: [ (aMatraEnvironment location / 'Pharo.changes') exists ]