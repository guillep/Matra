initialization
start

	1 to: poolSize do: [ :i | imageProcesses add: [ processCreationBlock value: self ] fork ].
	
	WeakRegistry default add: self. 