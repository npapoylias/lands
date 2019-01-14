as yet unclassified
terminalMatchForInput: input atPosition: readingPosition

	^ readingPosition == input size 
		ifTrue: [ readingPosition  ] "no match already at end"		
		ifFalse: [
			input directSetPos: readingPosition. 
			(self regExpr matchesStreamPrefix: input)
			ifTrue: [
				input updateLastTokenPos. 
				self ignoreRegExpr matchesStreamPrefix: input. 
				input position]
			ifFalse: [readingPosition]
		]