tests
testTokenOrderLeft

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
			| <expression> "^" <expression> 
		' ==> { 
			[ :tokens | tokens second ].
			[ :token  | token tokenValue asNumber ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
			[ :tokens | tokens first raisedTo: tokens last ].
		}
	}.

	results := grammar parseLogging: '2^3^4'.

	self assert: results trees size = 1.
	
	self assert: results results first value = 4096.
	