Parsec-LanguageClasses
literalArray

	^ super literalArray ==> [ :values | values nodes asArray lit <-> values ]