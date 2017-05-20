Parsec-LanguageClasses
expression

	^ super expression ==> {  
			[ :tokens | tokens second ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
			[ :token  | token value asNumber ]
		}