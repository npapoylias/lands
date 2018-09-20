as yet unclassified
|| aSymbolOrString

	self beOrdered.
	self | aSymbolOrString.
	childRules ifNotEmpty: [childRules last recursiveIndex: -1]. "Vanilla ordered choice"