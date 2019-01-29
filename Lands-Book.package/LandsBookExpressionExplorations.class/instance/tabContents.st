not defined category
tabContents
	^ tabContents ifNil: [ 
	tabContents := self newTabManager.
		tabContents addTab: LandsBookGrammarREPL default tab.
		tabContents addTab: LandsBookActionsREPL default tab.
		tabContents addTab: LandsBookOODesign default tab. tabContents ].