tests
testFMOenglisOpsMixed

	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'book that flight   '
		using: GrayGrammar englishWithTempsEmptyInlineTerminalsAndOpsMixed.
		
	self assert: charts succeeded.