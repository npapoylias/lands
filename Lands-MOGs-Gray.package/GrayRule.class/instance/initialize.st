initialization
initialize

	super initialize.
	rightHandSide := GrayCollection new.
	rightHandSide add: GrayCollection new.
	childRules := GrayCollection new.
	annotated := false. 
	isAnd := false. 
	isNot := false. 
	ordered := false. "by default -- changes with \"
	action := Dictionary new.
	recursiveIndex := GrayCollection new. "self recursive by default"
	
	