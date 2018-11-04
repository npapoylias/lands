initialization
initialize

	super initialize.
	rightHandSide := OrderedCollection new.
	rightHandSide add: ParsecCollection new.
	childRules := OrderedCollection new.
	annotated := false.
	isAnd := false. 
	isNot := false. 
	ordered := false. "by default -- changes with \"
	action := Dictionary new.
	recursiveIndex := OrderedCollection new. "self recursive by default"
	
	