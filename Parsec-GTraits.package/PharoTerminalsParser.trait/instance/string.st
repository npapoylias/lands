accessing
string

	^ super string ==> [ :token | token string withoutQuotes lit <-> token ]