Parsec-LanguageClasses
methodDeclaration

	^ super methodDeclaration ==> {  
		[ :token | token dclr ].
		[ :values | values first dclr args: values second ].
		[ :values | values keywordDclr args: values args ]
	} 