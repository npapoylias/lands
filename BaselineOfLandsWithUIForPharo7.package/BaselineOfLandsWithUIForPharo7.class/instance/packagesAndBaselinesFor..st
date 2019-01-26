baselines
packagesAndBaselinesFor: spec
	super packagesAndBaselinesFor: spec.
	^ spec
		baseline: 'Roassal2'
			with: [ spec
				repository: 'github://ObjectProfile/Roassal2/src' ];
		package: 'Lands-UI'