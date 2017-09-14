parsing
parse: aString using: aGrammar
	super parse: aString using: aGrammar.
	self checkSuccessOrBackTrack.
	^ charts