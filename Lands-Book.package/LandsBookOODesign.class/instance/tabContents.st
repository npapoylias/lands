not defined category
tabContents
	^ tabContents ifNil: [ 
	tabContents := self newTabManager.
		tabContents addTab: LandsBookExpressionMOG default tab.
		tabContents addTab: LandsBookExpressionASL default tab.
		tabContents addTab: LandsBookExpressionREPL default tab. tabContents ].