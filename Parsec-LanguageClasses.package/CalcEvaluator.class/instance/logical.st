Parsec-LanguageClasses
logical

	^ super logical ==> {  
			[ :token | true  ].
			[ :token  | false ].
			[ :tokens | [tokens first value | tokens last value] ]. 
			[ :tokens | [tokens first value & tokens last value] ]. 
		}  