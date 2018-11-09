Parsec-LanguageClasses
impMethodDeclaration

	^ super impMethodDeclaration ==> [:values | |keyVars|
		keyVars := values select: [:t | ({ '.' . '=' . '(' . ')' . ':' } includes: t string) not].
		keyVars size = 1 "unaary"
			ifTrue: [ { keyVars first allButLast asSymbol } ]
			ifFalse: [ keyVars ]
	]