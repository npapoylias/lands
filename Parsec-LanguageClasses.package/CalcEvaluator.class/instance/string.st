Parsec-LanguageClasses
string

	^ super string ==> [ :token | |str| str := token tokenValue. str atAll: (2 to: str size - 1) ]
	