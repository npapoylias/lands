accessing
try: rule index: i for: aState given: newStates
	| match |
	match := rule terminalMatchForInput: input atPosition: aState to.
	match > aState to ifFalse: [ ^ self ].
	charts
		nextAdd:
			((rule asScannerStateFrom: readingPosition to: match withIndex: 1)
				fromTerminal: aState toTerminal;
				toTerminal: aState toTerminal + 1).
	"readingPosition := match."	"check how more than one matches are handled here"
	newStates
		add:
			((ParsecState
				on: aState ruleAtDot
				alternative: i
				from: readingPosition
				to: readingPosition
				dot: 0)
				fromTerminal: aState toTerminal;
				toTerminal: aState toTerminal)