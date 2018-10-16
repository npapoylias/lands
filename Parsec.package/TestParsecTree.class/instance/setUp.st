initialization
setUp
		
	grammar := ParsecGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::= "(" <expression> ")"
			| <expression> "*" <expression>
			| <expression> "/" <expression>
			| <expression> "+" <expression>
			| <expression> "-" <expression>
			| <number>' ==> { 
				[ :tokens | tokens second ].
				[ :tokens | tokens first * tokens last ].
				[ :tokens | tokens first / tokens last ].
				[ :tokens | tokens first + tokens last ].
				[ :tokens | tokens first - tokens last ].
				[ :token  | token string asNumber ]
			}.
		'<number> ::= ''[0-9]+(\.[0-9]+)?''' 
	}.

	