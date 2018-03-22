*Parsec
allElements

	^ (self collect: [ self nestedElements allElements ]) deepFlatten