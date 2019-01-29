not defined category
tabContents
	^ tabContents ifNil: [ 
	tabContents := self newTabManager.
		tabContents addTab: LandsBookExtendingPharo default tab.
		tabContents addTab: LandsBookAlternativePostcard default tab.
		tabContents addTab: LandsBookAlternativeMixedPostcard default tab.
		tabContents addTab: LandsBookMixedPostcard default tab.
		tabContents addTab: LandsBookExtendedGrammar default tab.
		tabContents addTab: LandsBookExtendedActions default tab. tabContents ].