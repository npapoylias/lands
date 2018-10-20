Parsec-LanguageClasses
byteArray

	^ super byteArray ==> [ :tokens | tokens second asByteArray lit <-> tokens ]