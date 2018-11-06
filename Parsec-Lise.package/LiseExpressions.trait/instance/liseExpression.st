accessing
liseExpression

	<liseExpression> ::= || "(" <liseExpression> * ")" 
		|| "(" <specialForm> ")" 
		|| "'" <quotedExpression>
		|| "(:" <hostExpression> ")"
		| <number>
		| <string>
		| <identifier>