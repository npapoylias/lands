Parsec-LanguageClasses
symbol

	^ super symbol ==> [ :values | values second asSymbol lit <-> values ]