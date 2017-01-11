initialization
initialize

	super initialize.
	chartIndex := 1.
	logging := false.
	self augment.
	current := self at:1.