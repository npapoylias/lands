accessing
expression

	<expression> ::= 
		\ <expression> ("||"|"&&") <expression>
		\ <expression> ("=="|"~=") <expression>
		\ <expression> ("<="|">="|">"|"<") <expression> 
		\ <expression> ("+"|"-") <expression>
		\ <expression> ("*"|"/"|"%") <expression>
		| <expression> "^" <expression>
		|| "(" <expression> ")"
		| <variable>
		| <number>
		| "true"
		| "false"