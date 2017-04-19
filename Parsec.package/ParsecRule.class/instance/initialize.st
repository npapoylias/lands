initialization
initialize

	super initialize.
	rightHandSide := ParsecCollection new.
	rightHandSide add: ParsecCollection new.
	childRules := ParsecCollection new.
	isAnd := false. 
	isNot := false. 
	ordered := false. "by default -- changes with \"
	action := Dictionary new.
	
	