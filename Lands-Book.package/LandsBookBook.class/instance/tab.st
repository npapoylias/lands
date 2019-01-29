not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookChapter1 default tab.
		tab addTab: LandsBookChapter2 default tab.
		tab addTab: LandsBookChapter3 default tab.
		tab addTab: LandsBookChapter4 default tab.
		tab addTab: LandsBookChapter5 default tab.
		tab addTab: LandsBookChapter6 default tab. tab ].