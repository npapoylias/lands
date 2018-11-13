tests
testPrimaryValuesAndAlternativeFunctors

	self assert: (:+ 
		([:x | x first - 5] {'string' size})
		(:{Object class} size)
		('size '(sym))
		(+ ((Object 'instanceVariables) 'size) 1)
	) = 4.