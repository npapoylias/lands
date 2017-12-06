as yet unclassified
try: pRule at: position

	^ (pRule
		terminalMatchForInput: self input
		atPosition: position) > position