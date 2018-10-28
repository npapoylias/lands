Parsec-LanguageClasses
impVarDeclaration

	^ super impVarDeclaration ==> {
		[:values | { 
			values second var <-> values second. 
			values second symbol === values fourth <-> values 
		} ].
		[:values | values second var <-> values second ]
	}