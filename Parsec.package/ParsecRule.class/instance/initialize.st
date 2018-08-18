initialization
initialize

	super initialize.
	rightHandSide := ParsecCollection new.
	rightHandSide add: ParsecCollection new.
	childRules := OrderedCollection new.
	isAnd := false. 
	isNot := false. 
	ordered := false. "by default -- changes with \"
	action := Dictionary new.
	recursiveIndex := 0. "self recursive by default"
	
	