tests
testExpressionGrammar

	|result|

	result := ParsecExprGrammar new 
		parse: '2*3+4' using: ParsecMixedOrderAlgo new log.
		
	self assert: result succeeded.