tests
testOcontextSensitiveWithOtherAlgos

	charts := GrayMixedOrderedFilteredAlgo new log "curiosity does not work without the filter"
		parse: 'aaabbbccc'
		using: GrayGrammar contextSensitive.

	self assert: charts succeeded