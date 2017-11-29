Parsec-LanguageClasses
start

	env := Dictionary new.
	^ super start ==> [ :tokens | tokens last "return by convention the last statement" ]