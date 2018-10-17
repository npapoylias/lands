Parsec-LanguageClasses
message

	^ super message ==> {
		[ :values | values keyMsg ].
		[ :values | values binMsg ].
		[ :token | token msg ]
	} 
