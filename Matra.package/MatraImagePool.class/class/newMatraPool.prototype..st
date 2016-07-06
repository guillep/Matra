instance creation
newMatraPool: numberOfMatras prototype: prototypeImage

	self new
		poolSize: numberOfMatras;
		processCreationBlock: [ :queue | | image task |
			image := prototypeImage clone spawn.
			[ true ] whileTrue: [ 
				task := queue next.
				(image at: #MatraImage) newCurrent runTask: task.
			]];
		yourself