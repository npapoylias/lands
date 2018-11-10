tests
testFMOnumberFloat

	charts := GrayMixedOrderedFilteredAlgo new log
		parse: '23.23'
		using: MOGrammar numberFloat.
		
	self assert: charts succeeded.