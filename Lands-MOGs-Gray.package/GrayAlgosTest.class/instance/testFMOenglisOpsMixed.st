tests
testFMOenglisOpsMixed

	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'book that flight   '
		using: MOGrammar englishWithTempsEmptyInlineTerminalsAndOpsMixed.
		
	self assert: charts succeeded.