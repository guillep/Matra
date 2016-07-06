accessing
aliveProcesses
	
	^ imageProcesses select: [ :p | p isTerminated not ]