Parsec-LanguageClasses
expression

	^ super expression ==> {  
			[ :tokens | tokens second ].
			[ :tokens | tokens first * tokens last ]. 
			[ :tokens | tokens first / tokens last ]. 
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
			[ :token  | token  tokenValue asNumber "incosistency between parser and grammar on handling
			single tokens -- you should check.." ]
		} 