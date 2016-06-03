loading
loadSourceFile

	| imageUrl zipFile |
	self assert: self sourceFileExists not.
	self ensureDirectory.

	ZnClient new
		url: 'http://files.pharo.org/sources/PharoV', version asString, '.sources';
		downloadTo: self sourceFile fullName.
		
	self assert: self sourceFileExists.