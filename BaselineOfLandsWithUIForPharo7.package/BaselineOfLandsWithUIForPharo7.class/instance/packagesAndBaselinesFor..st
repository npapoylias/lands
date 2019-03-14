baselines
packagesAndBaselinesFor: spec
	^ spec
		baseline: 'Roassal2'
			with: [ spec
				repository: 'github://ObjectProfile/Roassal2/src' ];
		package: 'Lands-MOGs-Gray-Lexing';
		package: 'Lands-MOGs-Gray';
		package: 'Lands-ToolCompatibility';
		package: 'Lands-Parsers';
		package: 'Lands-GTraits';
		package: 'Lands-LanguageClasses';
		package: 'Lands-GTraits-Parsers';
		package: 'Lands-GTraits-Postcard-Classes';
		package: 'Lands-MOODs';
		package: 'Lands-MOODs-Geo';
		package: 'Lands-Lise-GTraits';
		package: 'Lands-Lise';
		package: 'Lands-Lise-Playground';
		package: 'Lands-UI';
		package: 'Lands-Book'