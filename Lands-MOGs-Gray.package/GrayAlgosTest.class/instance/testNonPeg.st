tests
testNonPeg

	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: GrayGrammar nonPeg.
		
	self assert: charts succeeded