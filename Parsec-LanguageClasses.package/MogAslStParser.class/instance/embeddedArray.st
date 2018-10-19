Parsec-LanguageClasses
embeddedArray

	^ super embeddedArray ==> [ :values | values second litArray <-> values ]
