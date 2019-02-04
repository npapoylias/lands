event handling
actOnMove: anEvent for: target in: aParagraph editor: anEditor

	anEditor hoverHighlightInterval: interval.
	Cursor webLink showWhile: [(Delay forMilliseconds: 500) wait].
	^ true