tests
testOcontextSensitiveWithOtherAlgos

	charts := GrayMixedOrderedFilteredAlgo new log "curiosity does not work without the filter"
		parse: 'aaabbbccc'
		using: MOGrammar contextSensitive.

	self assert: charts succeeded