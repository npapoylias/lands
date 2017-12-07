tests
testOcontextSensitiveWithOtherAlgos

	charts := ParsecMixedOrderedFilteredAlgo new log "curiosity does not work without the filter"
		parse: 'aaabbbccc'
		using: ParsecGrammar contextSensitive.

	self assert: charts succeeded