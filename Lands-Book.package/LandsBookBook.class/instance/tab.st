not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookTheoryAppofMOGs default tab.
		tab addTab: LandsBookTOCandSupport default tab.
		tab addTab: LandsBookPatreonTiers default tab. tab ].