Parsec-LanguageClasses
pragmaMessage

	^ super pragmaMessage ==> { 
		[:token | token prgm ]. 
		[:values | values binPrgm ]. 
		[:values | values keyPrgm ] 
	} 