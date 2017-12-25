Parsec-LanguageClasses
loop

	^ super loop ==> [ :tokens | [ |value|
			tokens third whileTrue: [ 
				tokens fifth do: [ :stmt | value := stmt value ] ]. "if and optinal else"
			value "return last"
		] ]
	