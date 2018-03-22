*Parsec
asVerticalLayoutEmbeddedIn: anElement gapSize: aNumber

	RTNest new on: anElement nest: self; layout: (RTVerticalLineLayout new gapSize:aNumber; on:self).
	^ anElement
