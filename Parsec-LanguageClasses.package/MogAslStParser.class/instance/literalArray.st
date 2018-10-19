Parsec-LanguageClasses
literalArray

	^ super literalArray ==> [ :values | values second asArray lit <-> values ]