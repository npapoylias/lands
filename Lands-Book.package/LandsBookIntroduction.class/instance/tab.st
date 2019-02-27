not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookLandsIntroduction default tab.
		tab addTab: LandsBookLanguagesareEverywhere default tab.
		tab addTab: LandsBookTheyAreAllAroundYou default tab.
		tab addTab: LandsBookOurLinguisticFuture default tab.
		tab addTab: LandsBookTheLandsProject default tab. tab ].