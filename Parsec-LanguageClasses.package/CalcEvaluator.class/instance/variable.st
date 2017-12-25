Parsec-LanguageClasses
variable

	^ super variable ==> [ :token | token tokenValue asSymbol ]
	