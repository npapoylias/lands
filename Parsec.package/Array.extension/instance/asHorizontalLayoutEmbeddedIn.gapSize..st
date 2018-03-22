*Parsec
asHorizontalLayoutEmbeddedIn: anElement gapSize: aNumber

	RTHorizontalLineLayout new gapSize:aNumber; on:self.
	RTNest new on: anElement nest: self.
	^ anElement