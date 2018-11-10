tests
testOcontextSensitive
	
	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'aaabbbccc'
		using: MOGrammar contextSensitive.

	self assert: charts succeeded