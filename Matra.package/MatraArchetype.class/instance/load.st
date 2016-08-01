loading
load

	| environment |
	environment := MatraEnvironment new.
	environment archetype: self.
	artifacts do: [ :art | art ensureInEnvironment: environment ].
	^ environment