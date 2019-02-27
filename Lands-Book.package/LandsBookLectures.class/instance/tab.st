not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookTheLandsLectures default tab.
		tab addTab: LandsBookLecturesDays1to6 default tab. tab ].