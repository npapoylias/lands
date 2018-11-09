Parsec-LanguageClasses
classicReturn

	^ super classicReturn ==> [ :values | values second return <-> values ]