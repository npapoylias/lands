copying
, aSymbolOrStringOrArray
	aSymbolOrStringOrArray isSymbol
		ifTrue: [ rightHandSide last addLast: aSymbolOrStringOrArray]
		ifFalse: [ self addChild: aSymbolOrStringOrArray ]