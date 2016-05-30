loading
loadImage
	
	| imageUrl zipFile |
	self assert: self imageExists not.
	self ensureDirectory.
	
	imageUrl := self remoteImageLocation asZnUrl.
	zipFile := location / 'zipfile'.
	ZnClient new
		url: imageUrl;
		downloadTo: zipFile.
	
	self assert: zipFile exists.
	
	(ZipArchive new readFrom: zipFile)
		extractAllTo: location.
		
	zipFile ensureDelete.
	location children do: [ :child |
		child renameTo: 'Pharo.', child extension  ].
	
	self assert: self imageExists.