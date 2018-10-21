Parsec-LanguageClasses
number

	^ super number ==> [ :token | token number lit  <-> token ]