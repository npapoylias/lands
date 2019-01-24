accessing
expression

	<expression> ::= 
		\ <expression> ("|"|"&") <expression>
		\ <expression> ("=="|"~=") <expression>
		\ <expression> ("<="|">="|">"|"<") <expression> 
		\ <expression> ("+"|"-") <expression>
		\ <expression> ("*"|"/"|"%") <expression>
		| <expression> "^" <expression>
		|| "(" <expression> ")"
		| "true"
		| "false"
		| <variable>
		| <number>