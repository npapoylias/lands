testing
opt

	|p|

	p := super opt.
	p tempRules add: (self withParent: p).
	^ p