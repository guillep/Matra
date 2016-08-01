deployment
isDeployedInEnvironment: aMatraEnvironment 
	
	^ (aMatraEnvironment location / 'pharo-vm') exists