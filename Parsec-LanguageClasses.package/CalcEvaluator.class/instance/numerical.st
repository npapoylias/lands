Parsec-LanguageClasses
numerical

	^ super numerical ==> {  
			[ :token  | token  string asNumber ]. 
			[ :tokens | [tokens first value + tokens last value] ]. 
			[ :tokens | [tokens first value - tokens last value] ]. 
			[ :tokens | [tokens first value * tokens last value] ]. 
			[ :tokens | [tokens first value / tokens last value] ].
			[ :tokens | [tokens first value % tokens last value] ].
			[ :tokens | [tokens first value raisedTo: tokens last value] ].
		}  