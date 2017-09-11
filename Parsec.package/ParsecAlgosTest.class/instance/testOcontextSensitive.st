tests
testOcontextSensitive
	
	charts := ParsecMixedOrderFilteredAlgo new log
		parse: 'aaabbbccc'
		using: ParsecGrammar contextSensitive.

	self assert: charts succeeded