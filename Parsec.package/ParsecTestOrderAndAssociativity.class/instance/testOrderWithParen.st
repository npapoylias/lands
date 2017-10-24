tests
testOrderWithParen

	grammar := ParsecGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::=  "(" <expression> ")"
			/ (''[0-9]+(\.[0-9]+)?'')
			| (<expression> "+") <expression> 
			| <expression> "-" <expression>
			| <expression> "*" <expression>
			| <expression> "/" <expression>
		' ==> { 
			[ :tokens | tokens second ].
			[ :tokens  | tokens first tokenValue asNumber ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
		}
	}.

	results := grammar parse: '2+3*4'.

	self assert: results trees size = 1.
	results results first value = 14.
	
	results := grammar parse: '2*3+4'.

	self assert: results trees size = 1.
	results results first value = 10.