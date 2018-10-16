*Parsec
sym

	value isSymbol "make a sym from a str literal including leading #"
		ifFalse: [ value := value asSymbol ]