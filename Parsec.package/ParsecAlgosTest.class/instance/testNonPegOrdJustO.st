tests
testNonPegOrdJustO

	charts := ParsecOrderedFilteredAlgo new log
		parse: 'xxxxxxx'
		using: ParsecGrammar nonPegOrd.
		
	self assert: charts succeeded