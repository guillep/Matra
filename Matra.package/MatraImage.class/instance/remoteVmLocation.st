loading
remoteVmLocation
	
	| platformName |
	platformName := OSPlatform current isUnix
		ifTrue: [ 'linux' ]
		ifFalse: [ 
			OSPlatform current isWindows
				ifTrue: [ 'win' ]
				ifFalse: ['mac' ]].
	^ 'http://files.pharo.org/get-files/', version asString ,'/', vmVersion asString, '-', platformName, '-stable.zip'