tests
testFilteredMOcontextSensitiveWithNot

	charts := ParsecMixedOrderFilteredAlgo new log
		parse: 'aaabbbccc'
		using: ParsecGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.
	
	charts := ParsecMixedOrderFilteredAlgo new log
		parse: 'aaabbbcccddd' "staro with not and pluso"
		using: ParsecGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.