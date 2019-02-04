*Lands-UI-Editor
forceAction
	|expr action|
	expr := UIManager default
		textEntry: 'Expression:' 
		title: 'Define click action (in context)' 
		entryText: '42 inspect'.
	action := LandsTextAction new interval: self selectionInterval; actOnClickBlock: [self evaluate: expr andDo: [ :result | result ]].
	self forceAttribute: action.
	self forceAttribute: (TextColor color: Color cyan).
	self forceAttribute: (TextEmphasis underlined)