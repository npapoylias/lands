as yet unclassified
complete: aState

	aState rule isTerminal ifTrue: [ readingPosition := aState to ]. "this was added by predict, updating position"
	super complete: aState.