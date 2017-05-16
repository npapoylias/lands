accessing
atom

	^ atom --> terminal ==> [ :token | |s|
			s := (token value atAll: (2 to: token value size - 1)). 
			(ParsecLexer new parseAsString: s) asDFA regExpr: token value.
		]
		| regExpr ==> [ :token | token value atAll: (2 to: token value size - 1) ]
		| id 
		| empty ==> [ :token | #e ]
		| parentheses ==> [ :tokens | tokens second ]
		| delimeterStar ==> [ :tokens | tokens second delimeterStar ]
		| delimeterStaro ==> [ :tokens | tokens second delimeterStaro ]