Parsec-LanguageClasses
bareByteArray

	^ super byteArray ==> [ :tokens | tokens second asByteArray lit <-> tokens ] 