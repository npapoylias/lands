accessing
liseExpression

	<liseExpression> ::= || "(" <specialForm> ")" 
		|| "(" <liseExpression> * ")" 
		|| "'" <quotedExpression>
		|| "(:" <hostExpression> ")"
		| <number>
		| <string>
		| <liseId>