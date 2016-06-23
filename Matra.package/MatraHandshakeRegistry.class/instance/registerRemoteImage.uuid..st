as yet unclassified
registerRemoteImage: aRemoteProxy uuid: aUUID

	| future |
	FileStream stdout nextPutAll: ('got handshake: ', aUUID asString); cr. 
	future := registry
		at: aUUID asString
		ifAbsent: [ self error: 'There is no local image in the requested UUID' ].
	future deployResult: aRemoteProxy.