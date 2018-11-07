accessing
quotedExpression

	<quotedExpression> ::= "(" <quotedExpression> * ")" 
		| "'" <quotedExpression>
		| <number>
		| <string>
		| <liseId> 