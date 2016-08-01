loading
loadImage
	| imageUrl zipFile |
	self assert: self imageFile exists not.
	image ensureLocationExists.
	
	imageUrl := self remoteImageLocation asZnUrl.
	zipFile := self location / 'zipfile'.
	ZnClient new
		url: imageUrl;
		downloadTo: zipFile.
	
	self assert: zipFile exists.
	
	(ZipArchive new readFrom: zipFile)
		extractAllTo: self location.
		
	zipFile ensureDelete.
	self location children do: [ :child |
		child renameTo: 'Pharo.', child extension  ].
	
	self assert: self imageFile exists