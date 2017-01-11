accessing
try: rule index: i for: aState


	| match |
	
	((aState ruleAtDot directRefsAt: i) first isAnd
		or: [ (aState ruleAtDot directRefsAt: i) first isNot ])
		ifTrue: [ self andOrNotFor: aState at: i. ^ true ].
	
	match := rule terminalMatchForInput: input atPosition: aState to.
	match > aState to ifFalse: [ ^ false ].
	
	charts
		nextAdd:
			((rule asScannerStateFrom: readingPosition to: match withIndex: 1)
				fromTerminal: aState toTerminal;
				toTerminal: aState toTerminal + 1).
	"readingPosition := match."	"check how more than one matches are handled here"
	alternatives
		add:
			((ParsecState
				on: aState ruleAtDot
				alternative: i
				from: readingPosition
				to: readingPosition
				dot: 0)
				fromTerminal: aState toTerminal;
				toTerminal: aState toTerminal).
				
	^ true