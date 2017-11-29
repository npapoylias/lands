Parsec-LanguageClasses
numerical

	^ super numerical ==> {  
			[ :tokens | tokens second ].
			[ :token | env at: token  ].
			[ :token  | token  tokenValue asNumber ]. 
			[ :tokens | tokens first + tokens last ]. 
			[ :tokens | tokens first - tokens last ]. 
			[ :tokens | tokens first * tokens last ]. 
			[ :tokens | tokens first / tokens last ].
			[ :tokens |  tokens first % tokens last ].
			[ :tokens | tokens first raisedTo: tokens last ].
		}  