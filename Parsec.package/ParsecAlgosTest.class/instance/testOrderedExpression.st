tests
testOrderedExpression

	|grammar results |

	grammar := ParsecGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::= "(" <expression> ")"
			/ <expression> "*" <expression>
			| <expression> "/" <expression>
			| <expression> "+" <expression>
			| <expression> "-" <expression>
			| ''[0-9]+(\.[0-9]+)?''
		' ==> { 
			[ :tokens | tokens second ].
			[ :tokens | tokens first * tokens last ].
			[ :tokens | tokens first / tokens last ].
			[ :tokens | tokens first + tokens last ].
			[ :tokens | tokens first - tokens last ].
			[ :token  | token string asNumber ]
		}
	}.

	results := grammar parseLogging: '1+2+3'.
	
	self assert: results trees size = 1.
	self assert: results results first value = 6.