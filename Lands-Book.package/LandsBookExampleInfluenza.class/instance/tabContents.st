not defined category
tabContents
	^ tabContents ifNil: [ 
	tabContents := self newTabManager.
		tabContents addTab: LandsBookEpiScripter default tab.
		tabContents addTab: LandsBookEpiDomain default tab.
		tabContents addTab: LandsBookEpiModeler default tab. tabContents ].