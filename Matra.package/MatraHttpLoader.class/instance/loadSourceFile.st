loading
loadSourceFile

	self assert: self sourceFileExists not.
	image ensureLocationExists.

	ZnClient new
		url: 'http://files.pharo.org/sources/PharoV', self sourceVersion asString, '.sources';
		downloadTo: self sourceFile fullName.
	
	image sourceFile: self sourceFile.
	self assert: self sourceFileExists.