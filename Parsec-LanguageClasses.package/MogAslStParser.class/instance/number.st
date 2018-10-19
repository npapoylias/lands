Parsec-LanguageClasses
number

	^ super number ==> [ :token | token string asNumber lit  <-> token ]