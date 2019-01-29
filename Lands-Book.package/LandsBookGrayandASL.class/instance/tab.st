not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookExpressionExplorations default tab.
		tab addTab: LandsBookTheCalcLanguage default tab.
		tab addTab: LandsBookASLPostcards default tab.
		tab addTab: LandsBookMultiorderedPharo default tab. tab ].