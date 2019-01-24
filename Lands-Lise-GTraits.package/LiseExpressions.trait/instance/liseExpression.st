accessing
liseExpression

	<liseExpression> ::= || "(" <specialForm> ")" 
		|| "(" <liseExpression> * ")" 
		|| "'" <quotedExpression>
		|| "(:" <hostExpression> ")"
		| <primaryValue>
		| <liseId>