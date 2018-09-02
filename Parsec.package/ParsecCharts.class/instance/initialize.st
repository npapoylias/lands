initialization
initialize

	super initialize.
	chartIndex := 1.
	logging := false.
	interrupt := true
"	successfullTrees := ParsecCollection new."
	self augment.
	current := self at:1.