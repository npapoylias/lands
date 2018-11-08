accessing
specialForm

	<specialForm> ::= "quote" <liseExpression>
		| "if" <liseExpression> +
		| "define" <liseExpression> + 
		| "set" <liseExpression> + 
		| "lambda" <liseExpression> + 
		| "begin" <liseExpression> +