parsing
parse: aString using: aGrammar
	(aGrammar at: #Eof) beOrdered.
	super parse: aString using: aGrammar.
	self checkSuccessOrBackTrack.
	^ charts