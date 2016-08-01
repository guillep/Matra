deployment
isDeployedInEnvironment: aMatraEnvironment 
	
	^ (aMatraEnvironment location / (self sourcesFileNameInEnvironment: aMatraEnvironment)) exists