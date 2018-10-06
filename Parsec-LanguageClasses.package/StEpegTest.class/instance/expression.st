Parsec-LanguageClasses
expression

	<expression> ::= <assignment>
		|| "(" <expression> ")"
		/ <msgSend>
		| <variable>
		| <primaryValue>
		