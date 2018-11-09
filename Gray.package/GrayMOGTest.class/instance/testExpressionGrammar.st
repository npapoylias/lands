tests
testExpressionGrammar

	self assert: (MOGgrammar new parse: '
	<expression> ::= <expression> "*" <expression>
						| <expression> "/" <expression>
						| <expression> "+" <expression>
						| <expression> "-" <expression>
						| ''[0-9]+(.[0-9]+)?''
') results first value class = GrayRule

