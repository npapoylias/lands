event handling
actOnMove: anEvent for: target in: aParagraph editor: anEditor

	anEditor hoverHighlightInterval: (1 to: 10).
	Cursor webLink showWhile: [(Delay forMilliseconds: 500) wait].
	^ true