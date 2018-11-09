tests
testNumberFloatRegEx

	charts := GrayAlgo new log
		parse: '23.23'
		using: GrayGrammar numberFloatRegEx.
		
	self assert: charts succeeded