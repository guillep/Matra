loading
copy: aFileReference to: aDestination
	
	image ensureLocationExists.
	aFileReference isDirectory
		ifTrue: [ aFileReference copyAllTo: aDestination]
		ifFalse: [ aFileReference copyTo: aDestination ].
	^ aDestination