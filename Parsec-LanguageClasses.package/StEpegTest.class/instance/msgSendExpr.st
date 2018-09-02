Parsec-LanguageClasses
msgSendExpr

	<msgSendExpr> ::= <msgSendExpr> ( ";" <cascadeMsgSend> ) +
		| <msgSendExpr> (<keyword> <msgSendExpr>) +  
		| <msgSendExpr> (<binaryOp> <msgSendExpr>) +
		| <msgSendExpr> <identifier> +
		| <primaryExpression>
		