Parsec-LanguageClasses
msgSend

	^ super msgSend ==> [ :values | 
		values first |> values allButFirst msgs <-> values semicolons 
	]
