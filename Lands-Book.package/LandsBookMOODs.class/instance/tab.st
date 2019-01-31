not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookMOODsRaisondetre default tab.
		tab addTab: LandsBookExampleGeoScripter default tab.
		tab addTab: LandsBookGeoDomain default tab.
		tab addTab: LandsBookGeoModeler default tab.
		tab addTab: LandsBookExampleInfluenza default tab.
		tab addTab: LandsBookBeyondtheWorkbench default tab. tab ].