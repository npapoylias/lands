accessing
specialForm

	<specialForm> ::= "quote" <quotedExpression>
		| "if" <liseExpression> +
		| "define" <liseExpression> + 
		| "set" <liseExpression> + 
		| "lambda" <quotedExpression> <liseExpression> + 
		| "begin" <liseExpression> +