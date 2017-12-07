tests
testExpressionGrammar

	|result|

	result := ParsecExprGrammar new 
		parse: '2*3+4' using: ParsecMixedOrderedFilteredAlgo new log.
		
	self assert: result succeeded.