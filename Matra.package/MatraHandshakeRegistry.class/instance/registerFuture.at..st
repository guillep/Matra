as yet unclassified
registerFuture: aFuture at: aUUID

	registry
		at: aUUID asString
		ifPresent: [ self error: 'There is already an image registered with the requested UUID' ]
		ifAbsentPut: [ aFuture ]