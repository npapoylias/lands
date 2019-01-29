not defined category
tabContents
	^ tabContents ifNil: [ 
	tabContents := self newTabManager.
		tabContents addTab: LandsBookPharoREPL default tab.
		tabContents addTab: LandsBookPostcard default tab.
		tabContents addTab: LandsBookMsgSendRule default tab.
		tabContents addTab: LandsBookMessageRule default tab.
		tabContents addTab: LandsBookMsgSendAction default tab. tabContents ].