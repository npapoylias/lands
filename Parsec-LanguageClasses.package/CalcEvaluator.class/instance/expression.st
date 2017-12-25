Parsec-LanguageClasses
expression

	^ super expression ==> {  
			[ :tokens | tokens second ].
			[ :token 	 | [env at: token]  ]
		}  