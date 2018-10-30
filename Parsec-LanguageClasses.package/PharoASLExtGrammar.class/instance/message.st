Parsec-LanguageClasses
message

	<message> ::= 
		\ ( <keyword> <expression> ) +
		\ <binaryOp> <expression> 
		| <identifier> 
		| <impIndexing>
		| <functorInvocation>
		| <impMethodInvocation> 