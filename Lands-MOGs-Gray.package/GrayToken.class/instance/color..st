instance creation
color: aColorOrSymbol

	aColorOrSymbol isSymbol
		ifTrue: [ self has: (TextColor new color: (Color perform: aColorOrSymbol)) ]
		ifFalse: [ self has: (TextColor new color: aColorOrSymbol) ]