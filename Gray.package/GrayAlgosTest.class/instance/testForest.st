tests
testForest

	| result root |
	result := MOGExprGrammar new 
		"should be 250" parse: '(1*2+3/4)+(5*6+7/8)*(9*10+11/12)' using: GrayMixedOrderedFilteredAlgo new log.
	
	self assert: result trees size = 250.	
