tests
testNoOrder

	grammar := GrayGrammar new
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
			[ :token  | token string asNumber ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
		}
	}.

	results := grammar parse: '2+3*4'.

	self assert: results trees size = 2.
	self assert: results results first value = 20.
	self assert: results results second value = 14.