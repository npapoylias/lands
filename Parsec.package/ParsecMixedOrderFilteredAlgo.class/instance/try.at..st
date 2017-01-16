as yet unclassified
try: pRule at: position

	^ (pRule
		terminalMatchForInput: input
		atPosition: readingPosition) > position