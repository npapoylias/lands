tests
testExpressionGrammar

	self assert: (MOGgrammarActions new parse: '
	<expression> ::= <expression> "*" <expression>
						| <expression> "/" <expression>
						| <expression> "+" <expression>
						| <expression> "-" <expression>
						| ''[0-9]+(.[0-9]+)?''
') results first value class = GrayRule

