tests
testFMOenglisOpsMixed

	charts := ParsecMixedOrderedFilteredAlgo new log
		parse: 'book that flight   '
		using: ParsecGrammar englishWithTempsEmptyInlineTerminalsAndOpsMixed.
		
	self assert: charts succeeded.