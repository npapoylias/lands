not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookMOGsGrayASL default tab.
		tab addTab: LandsBookExpressionExplorations default tab.
		tab addTab: LandsBookTheCalcLanguage default tab.
		tab addTab: LandsBookMultiorderedPharo default tab. tab ].