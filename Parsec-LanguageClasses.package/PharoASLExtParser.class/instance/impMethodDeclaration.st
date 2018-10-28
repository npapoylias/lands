Parsec-LanguageClasses
impMethodDeclaration

	^ super impMethodDeclaration ==> [:values | 
		|vars keywords| 
		keywords := values select: [ :v | v isSymbol ].
		vars := values allButFirst select: [:t | ({ '.' . '=' . '(' . ')' } includes: t string) not ].
		keywords isEmpty 
			ifTrue: [ { values first } ] "unary"
			ifFalse: [ |decl|
				decl := { values first }.
				1 to: vars size do: [ :i | decl add: (vars at: i); add: (keywords at: i)]
			]
	]