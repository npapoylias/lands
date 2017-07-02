tests
testExpression
	|results|

	results := ExpressionEvaluator new parse: '1*2+3'.

	self assert: results trees size = 2.
	self assert: results results first value = 5