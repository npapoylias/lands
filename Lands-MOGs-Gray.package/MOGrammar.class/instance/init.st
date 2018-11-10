initialization
init

	self at: #e put: (GrayEmptyRule new grammar: self).
	self at: #Eof put: (GrayEof new grammar: self).
	self at: #ignore put: ((GrayTerminalRule new grammar: self) , '[ \t\n\r]*'). "can be overriden"