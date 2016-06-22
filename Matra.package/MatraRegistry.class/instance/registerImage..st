as yet unclassified
registerImage: anImage

	registry
		at: anImage uuid asString
		ifPresent: [ self error: 'There is already an image registered with the requested UUID' ]
		ifAbsentPut: anImage