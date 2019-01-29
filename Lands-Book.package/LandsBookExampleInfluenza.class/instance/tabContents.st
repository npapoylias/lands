not defined category
tabContents
	^ tabContents ifNil: [ 
	tabContents := self newTabManager.
		tabContents addTab: LandsBookEpiDomain default tab.
		tabContents addTab: LandsBookEpiModeler default tab. tabContents ].