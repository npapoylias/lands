tests
testNonPeg

	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: MOGrammar nonPeg.
		
	self assert: charts succeeded