as yet unclassified
terminalMatchForInput: input atPosition: readingPosition
	
	(readingPosition == lastPosition and: [ lastInput == input ]) ifTrue: [^ lastResult]. "last position memoize -- threaded ?"
	lastInput := input. lastPosition := readingPosition.
	readingPosition == input size 
		ifTrue: [ ^ lastResult := readingPosition  ]. "no match already at end"		
	input position: readingPosition. "already the case ?"
	^ lastResult := ((self regExpr matchesStreamPrefix: input)
			ifTrue: [self ignoreRegExpr matchesStreamPrefix: input. input position]
			ifFalse: [ readingPosition ])
			