Parsec-LanguageClasses
msgSend

	^ super msgSend ==> [ :values | 
		values first |> values allButFirst <-> values  
	]
