as yet unclassified
try: pRule at: position

	^ (memoLexing for: input with: pRule at: position) > position.
	"^ (pRule
		terminalMatchForInput: input
		atPosition: position) > position"