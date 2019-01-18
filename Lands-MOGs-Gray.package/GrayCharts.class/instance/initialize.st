initialization
initialize

	super initialize.
	chartIndex := 1.
	stateIndex := 0.
	logging := false.
"	successfullTrees := GrayCollection new."
	lastSeenStack := GrayStack new.
	lastSeenStack push: Dictionary new.
	btLastSeenIndex = 1.
	ambiguous := false. "on pre-existing complete, set"
	self augment.
	current := self at:1.