tests
testForestResult

	| result root |
	result := ParsecExprGrammar new 
		"should be 250" parse: '5*2+3' using: ParsecMixedOrderAlgo new log.
	
	self assert: result trees size = 2.
	self assert: result results asSet = { 13 . 25 } asSet.