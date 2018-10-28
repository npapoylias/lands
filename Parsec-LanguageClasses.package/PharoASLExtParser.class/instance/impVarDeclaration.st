Parsec-LanguageClasses
impVarDeclaration

	^ super impVarDeclaration ==> {
		[:values | { values second var . values second symbol === values third second <-> values } ].
		[:values | values second var ]
	}