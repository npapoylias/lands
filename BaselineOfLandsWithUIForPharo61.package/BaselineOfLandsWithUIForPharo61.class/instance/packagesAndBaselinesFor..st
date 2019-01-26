baselines
packagesAndBaselinesFor: spec
	super packagesAndBaselinesFor: spec.
	^ spec
		project: 'Roassal2'
			with: [ spec
				className: 'ConfigurationOfRoassal2';
				file: 'ConfigurationOfRoassal2';
				version: #development;
				repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ];
		package: 'Lands-UI'