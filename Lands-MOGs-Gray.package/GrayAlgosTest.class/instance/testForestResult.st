tests
testForestResult

	| result root | 
	result := MOGExprGrammar new 
		"should be 250" parse: '5*2+3' using: GrayMixedOrderedFilteredAlgo new log.
	
	self assert: result trees size = 2.
	self assert: (result results collect: [ :r | r value ]) asSet = { 13 . 25 } asSet.