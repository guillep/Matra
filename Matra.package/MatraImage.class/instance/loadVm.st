loading
loadVm
	
	| imageUrl zipFile |
	self assert: self vmExists not.
	self ensureDirectory.
	
	imageUrl := self remoteVmLocation asZnUrl.
	zipFile := location / 'zipfile'.
	ZnClient new
		url: imageUrl;
		downloadTo: zipFile.
	
	self assert: zipFile exists.
	
	(ZipArchive new readFrom: zipFile)
		extractAllTo: self vmDirectory.
		
	OSSUnixSubprocess new
		command: 'chmod';
		arguments: {'+x' . self vmExecutableFileName fullNameWithIndicator};
		runAndWait.

	zipFile ensureDelete.

	self assert: self vmExists.