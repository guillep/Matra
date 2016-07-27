baseline
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		configuration: 'OSSubprocess'
			with: [
				spec
					versionString: #stable;
					repository: 'github://marianopeck/OSSubprocess:master/repository' ];
		configuration: 'Seamless'
			with: [ 
				spec
					versionString: #stable;
					repository: 'http://smalltalkhub.com/mc/Pharo/Seamless/main' ];
		package: 'Matra' with: [ spec requires: #('OSSubprocess' 'Seamless') ] ]