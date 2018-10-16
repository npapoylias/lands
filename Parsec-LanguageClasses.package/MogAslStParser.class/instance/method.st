Parsec-LanguageClasses
method

	^ super method ==> [ :values |  
		values method pragmas: values pragmas.
		values method body: values statements.
		values method body temps: values temps.
	] 