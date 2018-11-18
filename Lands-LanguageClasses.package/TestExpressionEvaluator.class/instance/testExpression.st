tests
testExpression
	|results|

	results := ExpressionEvaluator compileval: '(2*3+8/4)^2^3'.
	self assert: results = 16777216