as yet unclassified
check: predict at: position forIndex: i

	^ ((predict at: i)
		terminalMatchForInput: input
		atPosition: readingPosition) > position