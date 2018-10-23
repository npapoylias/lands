Parsec-LanguageClasses
bareSymbol

	^ super bareSymbol ==> [ :token | token string asSymbol lit <-> token ]