Parsec-LanguageClasses
expression

	<expression> ::= "(" <expression> ")"
			| <expression> "*" <expression>
			| <expression> "/" <expression> 
			| <expression> "+" <expression>
			| <expression> "-" <expression>
			| '[0-9]+(\.[0-9]+)?'