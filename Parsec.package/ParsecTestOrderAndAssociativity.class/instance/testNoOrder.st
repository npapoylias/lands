tests
testNoOrder

	grammar := ParsecGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::=  "(" <expression> ")"
			| ''[0-9]+(\.[0-9]+)?''
			| <expression> "+" <expression> 
			| <expression> "-" <expression>
			| <expression> "*" <expression>
			| <expression> "/" <expression>
		' ==> { 
			[ :tokens | tokens second ].
			[ :token  | token tokenValue asNumber ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
		}
	}.

	results := grammar parse: '1+2*3'.

	self assert: results trees size = 2.
	self assert: results results first value = 9.
	self assert: results results second value = 7.