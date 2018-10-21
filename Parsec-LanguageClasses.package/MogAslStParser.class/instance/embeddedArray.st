Parsec-LanguageClasses
embeddedArray

	^ super embeddedArray ==> [ :values | values second asArray lit <-> values ]
