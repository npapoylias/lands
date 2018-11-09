tests
testFMOenglisOpsMixedWithError


	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'book that flight   8'
		using: GrayGrammar englishWithTempsEmptyInlineTerminalsAndOpsMixed.
		
	self assert: charts succeeded not.