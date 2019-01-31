not defined category
playground
grammar := MOGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression> '.
		'<expression> ::= 
			| <expression> ("+"|"-") <expression>
			| <expression> ("*"|"/") <expression>
			| <expression> "^" <expression>
			| "(" <expression> ")" 
			| <number>
		'. 
		'<number> ::= ''[0-9]+(\.[0-9]+)?''' 
	}.

grammar  parseview: '(2*3^4^5)+(6*7/8)'.

grammar := MOGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::= 
			\ <expression> ("+"|"-") <expression>
			\ <expression> ("*"|"/") <expression>
			| <expression> "^" <expression>
			|| "(" <expression> ")" 
			| <number>
		'. 
		'<number> ::= ''[0-9]+(\.[0-9]+)?''' 
	}.
	
grammar  parseview: '(2*3^4^5)+(6*7/8)'.