Parsec-LanguageClasses
bareByteArray

	^ super bareByteArray ==> [ :tokens | tokens second asByteArray lit <-> tokens ] 