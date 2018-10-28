Parsec-LanguageClasses
impMethodDeclaration

	^ super impMethodDeclaration ==> [:values | 
		values select: [:t | ({ '.' . '=' . '(' . ')' . ':' } includes: t string) not]
	]