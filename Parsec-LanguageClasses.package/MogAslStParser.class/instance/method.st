Parsec-LanguageClasses
method

	^ super method ==> [ :values |  
		values method pragmas: values pragmas.
		values method body: values stmts.
		values method body temps: values vars; <-> values bars
	] 