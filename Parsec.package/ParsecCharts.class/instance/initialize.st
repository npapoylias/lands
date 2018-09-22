initialization
initialize

	super initialize.
	chartIndex := 1.
	stateIndex := 0.
	logging := false.
	interrupt := false.
"	successfullTrees := ParsecCollection new."
	self augment.
	current := self at:1.