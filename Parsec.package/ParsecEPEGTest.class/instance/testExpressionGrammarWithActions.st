tests
testExpressionGrammarWithActions

	|grammar results |

	grammar := ParsecGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::= "(" <expression> ")"
			| <expression> "*" <expression>
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
			[ :token  | token value asNumber ]
		}
	}.

	results := grammar parse: '(1*2+3/4)+(5*6+7/8)*(9*10+11/12)'.
	self assert: results trees size = 250
