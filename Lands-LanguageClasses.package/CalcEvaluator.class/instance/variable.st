Parsec-LanguageClasses
variable

	^ super variable ==> [ :token | token string asSymbol ]
	