not defined category
tab 
	^ tab ifNil: [ 
		tab := self newTabManager.
		tab addTab: LandsBookXeroxSICPBelllabs default tab.
		tab addTab: LandsBookTheLisePostcard default tab.
		tab addTab: LandsBookTestNorvig default tab.
		tab addTab: LandsBookTheAltLisePostcard default tab.
		tab addTab: LandsBookTheAltMixedLisePostcard default tab.
		tab addTab: LandsBookSharingPrimaryValues default tab.
		tab addTab: LandsBookTheLiseGrammar default tab.
		tab addTab: LandsBookTheLiseCompiler default tab. tab ].