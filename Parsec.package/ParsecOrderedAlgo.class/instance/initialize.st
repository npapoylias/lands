initialization
initialize

	super initialize.
	backTrackStack := ParsecBTStack new.
	ruleToAlternativeIndex := Dictionary new.