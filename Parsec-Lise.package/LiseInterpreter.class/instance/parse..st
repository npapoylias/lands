eval
parse: aString
	|results|
	results := (super parse: aString) eval.
	self assert: results size = 1. "should add a hook here for delegating to ambiguity handlers"
	^ results first