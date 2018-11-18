initialization
testViewClassDefinition

	results := ExpressionEvaluator new parse: '1+2+3' using: GrayBaseAlgo new.
	self assert: results trees size = 2.

	^ results defaultView
