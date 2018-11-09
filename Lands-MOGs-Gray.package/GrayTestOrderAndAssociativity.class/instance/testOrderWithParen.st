tests
testOrderWithParen

	grammar := GrayGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::=  "(" <expression> ")"
			| (<expression> "+") <expression> 
			| <expression> "-" <expression>
			| <expression> "*" <expression>
			| <expression> "/" <expression>
			/ (''[0-9]+(\.[0-9]+)?'')
		' ==> { 
			[ :tokens | tokens second ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
			[ :tokens  | tokens first string asNumber ].
		}
	}.

	results := grammar parse: '2+3*4'.

	self assert: results trees size = 1.
	results results first value = 14.
	
	results := grammar parse: '2*3+4'.

	self assert: results trees size = 1.
	results results first value = 10.