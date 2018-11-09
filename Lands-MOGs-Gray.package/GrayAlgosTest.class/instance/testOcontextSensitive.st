tests
testOcontextSensitive
	
	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'aaabbbccc'
		using: GrayGrammar contextSensitive.

	self assert: charts succeeded