tests
testNonPegOrdJustO

	charts := GrayOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: GrayGrammar nonPegOrd.
		
	self assert: charts succeeded