*Lands-UI-Editor
forceLink
	|expr action|
	expr := UIManager default
		textEntry: 'Expression:' 
		title: 'Link click to action' 
		entryText: '42 inspect'.
	action := LandsTextAction new interval: self selectionInterval; actOnClickBlock: [self evaluate: expr andDo: [ :result | result ]].
	self forceAttribute: action.
	self forceAttribute: (TextColor color: Color cyan).
	self forceAttribute: (TextEmphasis underlined)