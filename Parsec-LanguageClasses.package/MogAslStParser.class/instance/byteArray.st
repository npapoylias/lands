Parsec-LanguageClasses
byteArray

	^ super byte ==> [ :tokens | tokens second asByteArray lit <-> tokens ]