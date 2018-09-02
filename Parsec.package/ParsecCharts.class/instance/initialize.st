initialization
initialize

	super initialize.
	chartIndex := 1.
	logging := false.
	interrupt := false.
"	successfullTrees := ParsecCollection new."
	self augment.
	current := self at:1.