Parsec-LanguageClasses
methodDeclaration

	^ super methodDeclaration ==> {   
		[ :token | token dclr ]. 
		[ :values | values binDclr ]. 
		[ :values | values keyDclr ]
	} 