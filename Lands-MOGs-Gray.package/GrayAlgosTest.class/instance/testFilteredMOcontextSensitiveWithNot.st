tests
testFilteredMOcontextSensitiveWithNot

	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'aaabbbccc'
		using: MOGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.
	
	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'aaabbbcccddd' "staro with not and pluso"
		using: MOGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.