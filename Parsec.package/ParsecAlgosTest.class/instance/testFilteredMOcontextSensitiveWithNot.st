tests
testFilteredMOcontextSensitiveWithNot

	charts := ParsecMixedOrderedFilteredAlgo new log
		parse: 'aaabbbccc'
		using: ParsecGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.
	
	charts := ParsecMixedOrderedFilteredAlgo new log
		parse: 'aaabbbcccddd' "staro with not and pluso"
		using: ParsecGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.