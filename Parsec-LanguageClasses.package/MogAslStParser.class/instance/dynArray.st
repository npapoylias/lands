Parsec-LanguageClasses
dynArray

	^ super dynArray ==> [ :values | values nodes dynArray <-> values ]