tests
testTokenOrderRight

	grammar := MOGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::=  "(" <expression> ")"
			| <expression> "+" <expression> 
			| <expression> "-" <expression>
			| <expression> "*" <expression>
			| <expression> "/" <expression>
			/ <expression> "^" <expression>
			| ''[0-9]+(\.[0-9]+)?'' 
		' ==> { 
			[ :tokens | tokens second ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
			[ :tokens | tokens first raisedTo: tokens last ].
			[ :token  | token string asNumber ].
		}
	}.

	results := grammar parseLogging: '2^3^4'.

	self assert: results trees size = 1.
	
	self assert: results results first value = 	2417851639229258349412352