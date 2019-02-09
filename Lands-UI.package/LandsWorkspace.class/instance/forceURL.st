lands-extentions
forceURL
	|action selection|
	selection := self selection asString.
	action := LandsTextAction new 
		interval: self selectionInterval; 
		argument: selection;
		actOnClickBlock: [:act :event :target :paragraph :editor | WebBrowser openOn: act argument].
	self forceAttribute: action.
	self forceAttribute: (TextColor color: Color orange).
	self forceAttribute: (TextEmphasis underlined)