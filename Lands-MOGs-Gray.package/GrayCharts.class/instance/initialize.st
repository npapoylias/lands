initialization
initialize

	super initialize.
	chartIndex := 1.
	stateIndex := 0.
	logging := false.
"	successfullTrees := GrayCollection new."
	lastSeenStack := Stack new.
	lastSeenStack push: Dictionary new.
	self augment.
	current := self at:1.