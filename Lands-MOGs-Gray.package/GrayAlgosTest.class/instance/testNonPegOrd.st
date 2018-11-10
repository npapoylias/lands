tests
testNonPegOrd

	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: MOGrammar nonPegOrd.
		
	self assert: charts succeeded