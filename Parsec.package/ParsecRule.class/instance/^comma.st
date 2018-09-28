copying
, aSymbolOrStringOrArray
	aSymbolOrStringOrArray isSymbol
		ifTrue: [ 
			rightHandSide last addLast: aSymbolOrStringOrArray.
			recursiveIndex ifEmpty: [ recursiveIndex add: 0 ].
		]
		ifFalse: [ self addChild: aSymbolOrStringOrArray ]