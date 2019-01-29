not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookDay1 default tab.
		tab addTab: LandsBookDay2 default tab.
		tab addTab: LandsBookDay3 default tab.
		tab addTab: LandsBookDay4 default tab.
		tab addTab: LandsBookDay5 default tab.
		tab addTab: LandsBookDay6 default tab. tab ].