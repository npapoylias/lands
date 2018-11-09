accessing
message

	<message> ::= 
		\ ( <keyword> <expression> ) +
		\ <binaryOp> <expression> 
		| <identifier>
		| <impMethodInvocation>
		| <impIndexingAssignment>
		| <impIndexing>