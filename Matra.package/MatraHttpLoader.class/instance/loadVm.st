loading
loadVm
	
	| imageUrl zipFile |
	self assert: self vmBinary exists not.
	image ensureLocationExists.
	
	imageUrl := self remoteVmLocation asZnUrl.
	zipFile := image location / 'zipfile'.
	ZnClient new
		url: imageUrl;
		downloadTo: zipFile.
	
	self assert: zipFile exists.
	
	(ZipArchive new readFrom: zipFile)
		extractAllTo: self vmDirectory.
		
	OSSUnixSubprocess new
		command: 'chmod';
		arguments: {'+x' . self vmBinary fullNameWithIndicator};
		runAndWait.

	zipFile ensureDelete.

	self assert: self vmBinary exists.
	image vmBinary: self vmBinary.