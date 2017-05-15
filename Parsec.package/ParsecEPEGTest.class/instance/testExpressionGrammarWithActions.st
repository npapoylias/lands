tests
testExpressionGrammarWithActions

	self assert: ('<expression> ::= <expression> "*" <expression>
						| <expression> "/" <expression>
						| <expression> "+" <expression>
						| <expression> "-" <expression>
						| ''[0-9]+(.[0-9]+)?''' asEpegRule) class = ParsecRule
