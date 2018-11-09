testing
opto

	|p|

	p := super opto.
	p tempRules add: (self withParent: p).
	^ p