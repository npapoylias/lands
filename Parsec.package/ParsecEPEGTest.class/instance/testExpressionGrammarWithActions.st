tests
testExpressionGrammarWithActions

	self assert: ('
		<expression> ::= <expression> "*" <expression>
						| <expression> "/" <expression>
						| <expression> "+" <expression>
						| <expression> "-" <expression>
						| ''[0-9]+(.[0-9]+)?''
						
	' ==> { 
		[ :tokens | tokens first * tokens last ].
		[ :tokens | tokens first / tokens last ].
		[ :tokens | tokens first + tokens last ].
		[ :tokens | tokens first - tokens last ].
		[ :token  | token value asNumber ]
	}
	
	) action size = 5
