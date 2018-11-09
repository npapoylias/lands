tests
testExpressionGrammarFiltered

	"failing test on filter and internal dsl description, regression ?"

	|result|

	result := MOGExprGrammar new 
		parse: '2+4' using: GrayMixedOrderedFilteredAlgo new log.
		
	self assert: result succeeded.