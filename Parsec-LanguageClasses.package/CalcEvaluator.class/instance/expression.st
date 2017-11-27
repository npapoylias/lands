Parsec-LanguageClasses
expression

	^ super expression ==> {  
			[ :tokens | tokens second ].
			[ :token | env at: token asSymbol ].
			[ :token  | token  tokenValue asNumber ]. 
			[ :tokens | tokens first + tokens last ]. 
			[ :tokens | tokens first - tokens last ]. 
			[ :tokens | tokens first * tokens last ]. 
			[ :tokens | tokens first / tokens last ].
			[ :tokens | tokens first raisedTo: tokens last ].
		}  