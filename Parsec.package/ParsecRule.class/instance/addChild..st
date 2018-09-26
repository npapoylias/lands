adding
addChild: aSymbolOrStringOrArray

	childRules addLast: (aSymbolOrStringOrArray asRule withParent: self).
	self , childRules last name.