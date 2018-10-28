Parsec-LanguageClasses
functionBlock

	^ super functionBlock ==> [ :values | values last arguments: values second args ]