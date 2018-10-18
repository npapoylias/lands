Parsec-LanguageClasses
method

	^ super method ==> [ :values |  "we can simplify to create the methodNode here"
		"as values first method: {. to be in sync with the post-card example. Use more
		polymorphism, between tokens and symbols for e.g / hide everything else (ie choosing
		between unary / binary etc"
		values method pragmas: values pragmas.
		values method body: values stmts.
		values method body temps: values vars; <-> values bars
	] 