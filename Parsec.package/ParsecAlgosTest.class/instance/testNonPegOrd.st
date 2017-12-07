tests
testNonPegOrd

	charts := ParsecMixedOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: ParsecGrammar nonPegOrd.
		
	self assert: charts succeeded