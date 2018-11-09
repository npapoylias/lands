tests
testNonPegOrd

	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: GrayGrammar nonPegOrd.
		
	self assert: charts succeeded