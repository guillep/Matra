loading
loadImage

	image imageFile: (self copy: prototypeImage imageFile to: self imageFile).
	self copy: prototypeImage changesFile to: image changesFile.
