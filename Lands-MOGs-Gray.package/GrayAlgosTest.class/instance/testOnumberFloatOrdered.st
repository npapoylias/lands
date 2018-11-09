tests
testOnumberFloatOrdered

	charts := GrayOrderedFilteredAlgo new log
		parse: '23.23'
		using: GrayGrammar numberFloatOrdered.
		
	self assert: charts succeeded