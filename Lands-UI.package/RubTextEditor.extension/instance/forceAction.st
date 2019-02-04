*Lands-UI-Editor
forceAction
	|expr action|
	expr := UIManager default
		textEntry: 'Expression:' 
		title: 'Define click action (in context)' 
		entryText: '42 inspect'.
	action := LandsTextAction new 
		interval: self selectionInterval; "arg version of block, should ease serialization"
		argument: expr;
		actOnClickBlock: [:act :event :target :paragraph :area | area editor evaluate: act argument andDo: [ :result | result ]].
	self forceAttribute: action.
	self forceAttribute: (TextColor color: Color cyan).
	self forceAttribute: (TextEmphasis underlined)