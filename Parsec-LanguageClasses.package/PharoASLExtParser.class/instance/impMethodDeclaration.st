Parsec-LanguageClasses
impMethodDeclaration

	^ super impMethodDeclaration ==> [:values | |varKeys|
		varKeys := values 
			collect: [ :t | t string ] 
			thenSelect: [:t | ({ '.' . '=' . '(' . ')' } includes: t) not ].
		varKeys size = 1 
			ifTrue: [ { varKeys first asSymbol } ] "unary"
			ifFalse: [ varKeys collect: [ :i | i asSymbol ] ] "keyword"
	]