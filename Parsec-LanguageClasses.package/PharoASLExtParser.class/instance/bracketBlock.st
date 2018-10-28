Parsec-LanguageClasses
bracketBlock

	^ super bracketBlock ==> [:values | self halt. values block <-> values ]