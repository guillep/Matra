baseline
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		configuration: 'OSSubproces'
			with: [
				spec
					versionString: #stable;
					repository: 'github://marianopeck/OSSubprocess:master/repository' ];
		configuration: 'Seamless'
			with: [ 
				spec
					versionString: #development;
					repository: 'http://smalltalkhub.com/mc/Pharo/Seamless/main' ] ]