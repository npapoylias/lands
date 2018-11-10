tests
testFMOcontextSensitiveWithNot

	charts := GrayMixedOrderedFilteredAlgo new log "curiosity does not work without the filter"
		parse: 'aaabbbccc'
		using: MOGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.
	
	charts := GrayMixedOrderedFilteredAlgo new log "curiosity does not work without the filter"
		parse: 'aaabbbcccddd' "staro with not and pluso"
		using: MOGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.