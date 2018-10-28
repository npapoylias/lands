Parsec-LanguageClasses
classicWhile

	^ super classicWhile ==> [ :values | values second block |> { #whileTrue: . values third } <-> values ]