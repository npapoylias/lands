*Lands-UI-Editor
forceURL
	|action selection|
	selection := self selection.
	action := LandsTextAction new 
		interval: self selectionInterval; 
		actOnClickBlock: [WebBrowser openOn: selection].
	self forceAttribute: action.
	self forceAttribute: (TextColor color: Color orange).
	self forceAttribute: (TextEmphasis underlined)