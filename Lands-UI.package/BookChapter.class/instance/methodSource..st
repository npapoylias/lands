accessing
methodSource: aSymbol
	|methodSource|
	
	methodSource := (self class >> aSymbol) sourceCode.
	^ methodSource copyFrom: (methodSource indexOf: Character cr) + 1 to: methodSource size