tests
testFMOcontextSensitiveWithNot

	charts := ParsecMixedOrderedFilteredAlgo new log "curiosity does not work without the filter"
		parse: 'aaabbbccc'
		using: ParsecGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.
	
	charts := ParsecMixedOrderedFilteredAlgo new log "curiosity does not work without the filter"
		parse: 'aaabbbcccddd' "staro with not and pluso"
		using: ParsecGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.