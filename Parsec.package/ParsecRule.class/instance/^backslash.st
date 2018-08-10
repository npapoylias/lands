enumerating
\ aSymbolOrString

	self beOrdered.
	self | aSymbolOrString.
	childRules last recursiveIndex: 1.