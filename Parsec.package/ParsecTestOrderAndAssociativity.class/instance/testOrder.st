tests
testOrder

	grammar := ParsecGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::=  "(" <expression> ")"
			/ ''[0-9]+(\.[0-9]+)?''
			| <expression> "+" <expression> 
			| <expression> "-" <expression>
			| <expression> "*" <expression>
			| <expression> "/" <expression>
		' ==> { 
			[ :tokens | tokens second ].
			[ :token  | token tokenValue asNumber ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
		}
	}.

	results := grammar parseLogging: '1+2*3'.

	self assert: results trees size = 1.
	results results first value = 7.
	
	results := grammar parseLogging: '1*2+3'.

	self assert: results trees size = 1.
	results results first value = 5.