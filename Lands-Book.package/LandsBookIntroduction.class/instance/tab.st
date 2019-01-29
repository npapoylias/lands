not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookLanguagesareEverywhere default tab.
		tab addTab: LandsBookLanguagesaretheFuture default tab.
		tab addTab: LandsBookChomskyandFord default tab.
		tab addTab: LandsBookMultiorderedGrammars default tab.
		tab addTab: LandsBookTheLandsProject default tab. tab ].