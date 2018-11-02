grammar
methodDeclaration

	<methodDeclaration> ::= <identifier>
		/ <binaryOp> <variable>
		| (<keyword> <variable>) +
		| <impMethodDeclaration> 