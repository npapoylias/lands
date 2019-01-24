as yet unclassified
string

	^ super string ==> [ :token | token string withoutQuotes lit <-> token ]