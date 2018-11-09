as yet unclassified
bareSymbol

	^ super bareSymbol ==> [ :token | token string asSymbol lit <-> token ]