arithmetic
/ aSymbolOrString

	self beOrdered.
	self | aSymbolOrString.
	childRules last recursiveIndex: 0.