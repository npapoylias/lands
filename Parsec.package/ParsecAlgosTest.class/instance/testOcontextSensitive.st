tests
testOcontextSensitive
	
	charts := ParsecMixedOrderedFilteredAlgo new log
		parse: 'aaabbbccc'
		using: ParsecGrammar contextSensitive.

	self assert: charts succeeded