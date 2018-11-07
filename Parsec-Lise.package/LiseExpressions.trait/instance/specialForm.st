accessing
specialForm

	<specialForm> ::= "quote" <quotedExpression>
		| "if" <quotedExpression> +
		| "define" <quotedExpression> + 
		| "set" <quotedExpression> + 
		| "lambda" <quotedExpression> + 