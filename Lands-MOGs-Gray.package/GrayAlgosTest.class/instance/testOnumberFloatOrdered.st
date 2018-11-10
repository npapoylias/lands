tests
testOnumberFloatOrdered

	charts := GrayOrderedFilteredAlgo new log
		parse: '23.23'
		using: MOGrammar numberFloatOrdered.
		
	self assert: charts succeeded