parsing
parseview: aString using: algoInst

	lastResult := grammar parse: aString using: algoInst.
	^ lastResult defaultView