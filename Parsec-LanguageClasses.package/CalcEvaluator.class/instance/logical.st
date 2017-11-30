Parsec-LanguageClasses
logical

	^ super logical ==> {  
			[ :tokens | tokens second ].
			[ :token | true  ].
			[ :token  | false ].
			[ :token | [env at: token]  ].
			[ :token | token ].
			[ :tokens | [tokens first value | tokens last value] ]. 
			[ :tokens | [tokens first value & tokens last value] ]. 
		}  