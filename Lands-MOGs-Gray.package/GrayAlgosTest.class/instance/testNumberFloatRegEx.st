tests
testNumberFloatRegEx

	charts := GrayBaseAlgo new log
		parse: '23.23'
		using: MOGrammar numberFloatRegEx.
		
	self assert: charts succeeded