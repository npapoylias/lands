initialization
testViewClassDefinitionLong

	results := ExpressionEvaluator new parse: '(1*2+3/4)+(5*6+7/8)*(9*10+11/12)'.
	self assert: results trees size = 250.

	^ results defaultView
