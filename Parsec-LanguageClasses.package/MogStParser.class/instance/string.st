Parsec-LanguageClasses
string

	^ super string ==> [ :token |  
			RBLiteralValueNode 
				value: token string 
				start: token start
				stop: token stop
	]