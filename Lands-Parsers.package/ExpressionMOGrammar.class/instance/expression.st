accessing
expression 

	<expression> ::= 
			\ <expression> ("+"|"-") <expression> 
			\ <expression> ("*"|"/") <expression>   
			| <expression> "^" <expression>
			|| "(" <expression> ")"      
			| <number>           