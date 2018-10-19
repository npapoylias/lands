Parsec-LanguageClasses
literalArray

	^ super literalArray ==> [ :values | values second litArray <-> values ]