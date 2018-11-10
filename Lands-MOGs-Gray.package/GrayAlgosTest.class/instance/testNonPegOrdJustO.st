tests
testNonPegOrdJustO

	charts := GrayOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: MOGrammar nonPegOrd.
		
	self assert: charts succeeded