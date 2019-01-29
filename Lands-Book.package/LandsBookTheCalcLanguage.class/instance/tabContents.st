not defined category
tabContents
	^ tabContents ifNil: [ 
	tabContents := self newTabManager.
		tabContents addTab: LandsBookOOREPL default tab.
		tabContents addTab: LandsBookGrammar default tab.
		tabContents addTab: LandsBookEvaluator default tab. tabContents ].