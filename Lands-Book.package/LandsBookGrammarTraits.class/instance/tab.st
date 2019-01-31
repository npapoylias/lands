not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookGTraitsOverview default tab.
		tab addTab: LandsBookGTraitsGrammar default tab.
		tab addTab: LandsBookGTraitsASLActions default tab.
		tab addTab: LandsBookPharoGTraitsRecognizer default tab.
		tab addTab: LandsBookPharoGTraitsParser default tab.
		tab addTab: LandsBookGTraitsPostcard default tab.
		tab addTab: LandsBookPharoExtentions default tab. tab ].