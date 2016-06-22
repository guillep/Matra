instance-creation
on: aLocation version: aVersion vmVersion: aVmVersion

	^ self new
		location: aLocation;
		loader: (MatraHttpLoader new version: aVersion; vmVersion: aVmVersion; yourself);
		yourself