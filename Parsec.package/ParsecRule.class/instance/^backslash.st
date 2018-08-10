enumerating
\ aSymbolOrString

	self beOrdered.
	self | aSymbolOrString.
	childRules ifNotEmpty: [childRules last recursiveIndex: 1].