parsing
token: token color: aColorOrSymbol

	aColorOrSymbol isSymbol
		ifTrue: [ self token: token has: (TextColor new color: (Color perform: aColorOrSymbol)) ]
		ifFalse: [ self token: token has: (TextColor new color: aColorOrSymbol) ]