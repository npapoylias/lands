Parsec-LanguageClasses
impMethodInvocation

	^ super impMethodInvocation ==> [:values | |keysArgs|
		keysArgs := values select: [:v | v isNode or: [ ({ '.' . '=' . '(' . ')' . ':' } includes: v string) not ]].
		keysArgs size = 1 "unaary"
			ifTrue: [ keysArgs first allButLast asSymbol ]
			ifFalse: [ keysArgs ]
	]