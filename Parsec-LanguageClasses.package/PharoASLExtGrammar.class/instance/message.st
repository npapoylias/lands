Parsec-LanguageClasses
message

	<message> ::= 
		\ ( <keyword> <expression> ) +
		\ <binaryOp> <expression> 
		| <identifier> ! '[(\[]'
		| <impMethodInvocation>
		| <functorInvocation>
		