tests
testFMOenglisOpsMixedWithError


	charts := GrayMixedOrderedFilteredAlgo new log
		parse: 'book that flight   8'
		using: MOGrammar englishWithTempsEmptyInlineTerminalsAndOpsMixed.
		
	self assert: charts succeeded not.