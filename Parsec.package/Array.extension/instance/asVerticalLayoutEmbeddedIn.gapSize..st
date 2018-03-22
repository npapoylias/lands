*Parsec
asVerticalLayoutEmbeddedIn: anElement gapSize: aNumber

	RTVerticalLineLayout new gapSize:aNumber; on:self.
	RTNest new on: anElement nest: self.
	^ anElement
