lands-extentions
region: token color: aColorOrSymbol

	^ aColorOrSymbol isSymbol
		ifTrue: [ self region: token has: (TextColor new color: (Color perform: aColorOrSymbol)) ]
		ifFalse: [ self region: token has: (TextColor new color: aColorOrSymbol) ].