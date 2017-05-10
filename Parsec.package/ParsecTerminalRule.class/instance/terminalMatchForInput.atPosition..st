as yet unclassified
terminalMatchForInput: input atPosition: readingPosition
	
	(readingPosition == lastPosition and: [ lastInput == input ]) ifTrue: [^ lastResult]. "last position memoize -- threaded ?"
	lastInput := input. lastPosition := readingPosition.
	readingPosition == input size 
		ifTrue: [ ^ lastResult := readingPosition  ]. "no match already at end"		
	input directSetPos: readingPosition. "already the case -- Refactor lexer for
	better semantics here and in return value (for non match)"
	^ lastResult := ((self regExpr matchesStreamPrefix: input)
			ifTrue: [self ignoreRegExpr matchesStreamPrefix: input. input position]
			ifFalse: [ readingPosition])
			