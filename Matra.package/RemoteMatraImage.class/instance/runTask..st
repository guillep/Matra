accessing
runTask: aTask

	^ (remoteMatraImageProxy runRemoteTaskLocally: aTask) asLocalObject