accessing
sourcesFileNameInEnvironment: aMatraEnvironment 
	
	^ 'PharoV', (aMatraEnvironment image majorVersionNumber - 10) asString , '.sources'