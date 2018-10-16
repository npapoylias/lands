*Parsec
sym
	"make a sym from bareSymbol or sting"
	start := start - 1.
	value isSymbol "make a sym from a str literal including leading #"
		ifFalse: [ value := value asSymbol ]