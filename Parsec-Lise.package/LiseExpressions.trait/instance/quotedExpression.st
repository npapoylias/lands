accessing
quotedExpression

	<quotedExpression> ::= || "(" <quotedExpression> * ")" 
		| <string>
		|| "'" <quotedExpression>
		/ <number>
		| <liseId> 