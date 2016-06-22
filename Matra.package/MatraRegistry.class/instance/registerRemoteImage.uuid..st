as yet unclassified
registerRemoteImage: aRemoteProxy uuid: aUUID

	| image |
	image := registry
		at: aUUID
		ifAbsent: [ self error: 'There is no local image in the requested UUID' ].
	image remoteProxy: aRemoteProxy.