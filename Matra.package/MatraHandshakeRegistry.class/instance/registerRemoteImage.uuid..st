as yet unclassified
registerRemoteImage: aRemoteProxy uuid: aUUID

	| future |
	future := registry
		at: aUUID
		ifAbsent: [ self error: 'There is no local image in the requested UUID' ].
	future deployResult: aRemoteProxy.