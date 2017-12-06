tests
testExpressionGrammarFiltered

	"failing test on filter and internal dsl description, regression ?"

	|result|

	result := ParsecExprGrammar new 
		parse: '2+4' using: ParsecMixedOrderedFilteredAlgo new log.
		
	self assert: result succeeded.