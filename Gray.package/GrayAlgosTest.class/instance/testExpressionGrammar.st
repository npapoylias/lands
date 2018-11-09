tests
testExpressionGrammar

	|result|

	result := MOGExprGrammar new 
		parse: '2*3+4' using: GrayMixedOrderedFilteredAlgo new log.
		
	self assert: result succeeded.