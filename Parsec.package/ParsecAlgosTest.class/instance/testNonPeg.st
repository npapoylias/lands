tests
testNonPeg

	charts := ParsecMixedOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: ParsecGrammar nonPeg.
		
	self assert: charts succeeded