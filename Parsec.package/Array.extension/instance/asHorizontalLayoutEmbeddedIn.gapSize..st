*Parsec
asHorizontalLayoutEmbeddedIn: anElement gapSize: aNumber

	RTNest new on: anElement nest: self; layout: (RTHorizontalLineLayout new gapSize:aNumber; on:self).
	^ anElement