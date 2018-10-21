Parsec-LanguageClasses
embeddedArray

	^ super embeddedArray ==> [ :values | values nodes asArray lit <-> values ]
