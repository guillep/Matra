loading
loadSourceFile

	image ensureLocationExists.

	ZnClient new
		url: 'http://files.pharo.org/sources/PharoV', self sourceVersion asString, '.sources';
		downloadTo: self sourceFile fullName.