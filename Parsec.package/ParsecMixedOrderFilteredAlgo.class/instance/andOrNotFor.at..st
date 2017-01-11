accessing
andOrNotFor: aState at: i
	alternatives
		add:
			((ParsecState
				on: aState ruleAtDot
				alternative: i
				from: readingPosition
				to: readingPosition
				dot: 0)
				fromTerminal: aState toTerminal;
				toTerminal: aState toTerminal)