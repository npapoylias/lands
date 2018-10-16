*Parsec
binPrgm

	^ RBPragmaNode
		selector: self first string asSymbol
		arguments: self second