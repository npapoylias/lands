Parsec-LanguageClasses
method

	^ super method ==> [ :values | 
			values first method: {  
				values pragmas.
				values temps.
				values stmts <-> values 
			}
	] 