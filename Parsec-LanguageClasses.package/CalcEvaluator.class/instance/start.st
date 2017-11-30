rules
start

	env := Dictionary new.
	^ super start ==> [ :tokens | env -> (tokens collect: [:t | t value]) ] 